pipeline {
    agent { label 'LINUX' }

    stages {
        stage('Build') {
            agent {
                docker {
                    image 'node:18' 
                    reuseNode true
                    label 'DOCKER'
                }
            }
            environment {
                NPM_CONFIG_CACHE = '/tmp/.npm-cache'
            }
            steps {
                cleanWs()
                sh '''
                    node --version
                    npm --version
                    npm ci --no-cache
                    npm run build
                '''
            }
        }
    }
}
