pipeline {
    agent { label 'LINUX' }

    stages {
        stage('Build') {
            agent {
                docker {
                    image 'node:18-alpine'
                    reuseNode true
                    label 'DOCKER'
                }
            }
            steps {
                sh '''
                    ls -al
                    npm cache clean --force
                    npm ci
                    node --version
                    npm --version
                    npm ci
                    npm run build
                    ls -al
                '''
            }
        }
    }
}
