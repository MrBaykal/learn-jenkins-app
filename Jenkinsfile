pipeline {
    agent { label 'LINUX' }

    stages {
        stage('Clean Workspace') {
            steps {
                deleteDir()
            }
        }

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            agent {
                docker {
                    image 'node:18' // alpine değil
                    reuseNode true
                    label 'DOCKER'
                    args '-v /tmp/npm-cache:/tmp/npm-cache'
                }
            }
            steps {
                sh '''
                    echo "Listing files to verify checkout:"
                    ls -al

                    echo "Node & NPM versions:"
                    node -v
                    npm -v

                    echo "Clean npm cache"
                    npm cache clean --force

                    echo "Install dependencies"
                    npm install

                    echo "Build app"
                    npm run build
                '''
            }
        }
    }
}
