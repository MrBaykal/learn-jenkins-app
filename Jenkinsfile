pipeline {
    agent { label 'LINUX' }

    environment {
        IMAGE_NAME = 'learn-jenkins-app'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                echo '✅ Kod başarıyla alındı.'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo '🐳 Docker imajı oluşturuluyor...'
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Run Build in Docker Container') {
            steps {
                echo '🚀 Docker konteyner içinde build başlatılıyor...'
                sh 'docker run --rm $IMAGE_NAME'
            }
        }
    }

    post {
        success {
            echo '🎉 Pipeline başarıyla tamamlandı!'
        }
        failure {
            echo '❌ Pipeline başarısız oldu.'
        }
    }
}
