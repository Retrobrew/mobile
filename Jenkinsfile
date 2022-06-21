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
                    def docker = tool 'docker-agent';
                    sh "docker pull cirrusci/flutter";
                    sh "docker run -it -v $(pwd):/app -w /app cirrusci/flutter flutter build apk";
                }
            }
        }
        stage('Cleanup') {
            steps {
                script {
                    sh "docker rm -f image cirrusci/flutter";
                }
            }
        }
    }
}