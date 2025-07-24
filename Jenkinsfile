pipeline {
    agent { label 'LINUX' }

    stages {
        stage('w/o docker') {
            steps {
                sh '''
                    echo "Without docker"
                    ls -al
                    touch container-no.txt
                '''
            }
        }

        stage('w/ docker') {
            agent {
                docker {
                    image 'node:18-alpine'
                    reuseNode true
                    label 'DOCKER'
                }
            }
            steps {
                sh '''
                    echo "With docker"
                    ls -al
                    touch container-yes.txt
                '''
            }
        }
    }
}
