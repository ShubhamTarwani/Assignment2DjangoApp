pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/ShubhamTarwani/Assignment2DjangoApp.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t shubhamtarwani1/studentproject .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'shubhamtarwani1', url: '']) {
                    sh 'docker push shubhamtarwani1/studentproject'
                }
            }
        }
    }
}
