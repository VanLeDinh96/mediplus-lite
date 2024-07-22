pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/VanLeDinh96/mediplus-lite.git'
            }
        }
        // stage('Push Docker Hub') {
        //     steps {
        //         withDockerRegistry(credentialsId: 'docker-hub-cred', url: '') {
        //             sh label: '', script: 'docker build -t vanle96/web:latest .'
        //             sh label: '', script: 'docker push vanle96/web:latest'
        //         }
        //     }
        // }
    }
}
