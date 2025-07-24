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
                    cleanWs() 
                    ls -la
                    node --version
                    npm --version
                    npm install
                    npm ci
                    npm run build
                    ls -la
                '''
            }
        }
    }
}
