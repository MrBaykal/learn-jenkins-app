pipeline {
    agent {
        docker {
            image 'node:18'
            args '-v /tmp/npm-cache:/tmp/npm-cache' // sadece cache mount ediliyor
        }
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh '''
                    npm config set cache /tmp/npm-cache --global
                    npm install --no-bin-links
                    npm run build
                '''
            }
        }
    }
}
