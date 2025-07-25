pipeline {
    agent { label 'LINUX' }

    stages {
        stage('Clean Workspace') {
            steps {
                deleteDir() // Workspace'i tamamen temizle
            }
        }

        stage('Build') {
            agent {
                docker {
                    image 'node:18' // Debian tabanlı, alpine değil
                    reuseNode true
                    label 'DOCKER'
                }
            }
            steps {
                sh '''
                    ls -al
                    node -v
                    npm -v
                    npm cache clean --force
                    npm ci
                    npm run build
                    ls -al
                '''
            }
        }
    }
}
