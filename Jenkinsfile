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
                    branch 'dev/master'; branch 'feat/**'; branch 'fix/**'; branch 'master'
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
                    nodejs(nodeJSInstallationName: 'nodejs'){
                        def docker = tool 'docker-agent';
                        sh('echo "#!/bin/bash" > flutter_build.sh');
                        sh('echo "flutter pub get" >> flutter_build.sh');
                        sh('echo "flutter build apk" >> flutter_build.sh');
                        sh('chmod 777 flutter_build.sh');
                        sh('docker run --rm -i -v /var/lib/docker/volumes/jenkins_home/_data/`(pwd | awk -F\'jenkins_home\' \'{printf \$2}\')`:/app -w /app cirrusci/flutter sh flutter_build.sh');
                    }
                }
            }
        }
    }
}