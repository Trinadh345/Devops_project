pipeline {
    agent any

    stages {
        stage(e'Check out') {
            steps {
                git 'https://github.com/Trinadh345/Devops_project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 5000:5000 devops-app'
            }
        }
    }
}