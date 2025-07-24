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
            steps {
                cleanWs()
                sh '''
                    echo "🟢 Workspace temizlendi."
                    node --version
                    npm --version
                    npm ci
                    npm run build
                '''
            }
        }
    }
}
