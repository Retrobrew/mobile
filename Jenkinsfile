pipeline {
    agent any
    tools {
        dockerTool 'docker-agent'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('SonarQube Analysis') {
            when {
                anyOf {
                    branch 'develop'; branch 'feat/**'; branch 'fix/**'; branch 'master'
                }
            }
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'MOLERO_SONAR_PASSWORD', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]){
                        nodejs(nodeJSInstallationName: 'nodejs') {
                            sh "sonar-scanner -Dsonar.branch.name=${env.BRANCH_NAME} -Dsonar.login=${PASSWORD} -Dsonar.host.url=http://192.168.1.3:9000"
                        }
                    }
                }
            }
        }
        stage('Build for Android') {
            steps {
                script {
                    withCredentials([file(credentialsId: 'RETROBREW_MOBILE_KEYSTORE', variable: 'KEYSTORE'), file(credentialsId: 'RETROBREW_MOBILE_SIGN_KEY', variable: 'KEY')]){
                        nodejs(nodeJSInstallationName: 'nodejs'){
                            sh "cp -f \"${KEYSTORE}\" \"myCustom-Keystore.jks\""
                            writeFile file: 'android/key.properties', text: readFile(KEY)
                            def docker = tool 'docker-agent';
                            sh('chmod 777 scripts/flutter_build.sh');
                            sh('docker run --rm -i -v /var/lib/docker/volumes/jenkins_home/_data/`(pwd | awk -F\'jenkins_home\' \'{printf \$2}\')`:/app -w /app cirrusci/flutter sh scripts/flutter_build.sh');
                        }
                    }
                }
            }
        }
        stage('Deploy on Retrobrew server') {
            when {
                branch 'master'
            }
            steps{
                withCredentials([usernamePassword(credentialsId: 'RETROBREW_FRONT_PROD', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]){
                    nodejs(nodeJSInstallationName: 'nodejs'){
                        sh('sshpass -p ${PASSWORD} scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -P 22 scripts/update_latest_apk.sh ${USERNAME}@192.168.1.20:/home/prod/www/android/update_latest_apk.sh')
                        sh('sshpass -p ${PASSWORD} scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -P 22 build/app/outputs/flutter-apk/app-release.apk ${USERNAME}@192.168.1.20:/tmp/.')
                        sh('sshpass -p ${PASSWORD} ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 22 ${USERNAME}@192.168.1.20 sh /home/prod/www/android/update_latest_apk.sh')
                    }
                }
            }
        }
    }
}
