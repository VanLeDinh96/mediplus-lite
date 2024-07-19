pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', credentialsId: '1e0ff7c1-722d-4574-a35d-181fcee40ece', url: 'https://github.com/VanLeDinh96/mediplus-lite'
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
