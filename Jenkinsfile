pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', credentialsId: 'cred-github', url: 'https://github.com/VanLeDinh96/mediplus-lite'
            }
        }
        stage('Push Docker Hub') {
            steps {
                withDockerRegistry(credentialsId: 'creds-dockerhub', url: '') {
                    sh label: '', script: 'docker build -t vanle96/web:latest .'
                    sh label: '', script: 'docker push vanle96/web:latest'
                }
            }
        }
    }
}
