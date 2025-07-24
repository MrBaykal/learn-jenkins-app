pipeline {
    agent { label 'LINUX' }

    stages {
        stage('Build') {
            agent {
                docker {
                    image 'node:18-alpine'
                    reuseNode true
                    label 'LINUX'
                }
            }
            steps {
                cleanWs()
                sh '''
                    apk add --no-cache python3 make g++
                    ls -la
                    node --version
                    npm --version
                    npm ci
                    npm run build
                    ls -la
                '''
            }
        }
    }
}
