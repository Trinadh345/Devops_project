pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "trinadhbasva/devops-app:latest"
    }

    stages {

        stage('Clone Code') {
            steps {
                git 'https://github.com/Trinadh345/Devops_project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Push to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-creds', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh 'echo $PASS | docker login -u $USER --password-stdin'
                    sh 'docker push $DOCKER_IMAGE'
                }
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 5001:5000 $DOCKER_IMAGE'
            }
        }
    }
}