pipeline {
    agent { label 'LINUX' }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t learn-jenkins-app .'
            }
        }

        stage('Run Build in Docker Container') {
            steps {
                sh 'docker run --rm learn-jenkins-app'
            }
        }
    }
}
