pipeline {
    agent { label 'DOCKER' }

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
