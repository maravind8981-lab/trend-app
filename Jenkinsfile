pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/maravind8981-lab/trend-app'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t trend-app .'
            }
        }

        stage('Push to DockerHub') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    sh '''
                      docker tag trend-app $DOCKER_USER/trend-app:latest
                      echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
                      docker push $DOCKER_USER/trend-app:latest
                    '''
                }
            }
        }

        stage('Deploy to EKS') {
            steps {
                sh '''
                  kubectl apply -f deployment.yaml
                  kubectl apply -f service.yaml
                '''
            }
        }
    }
}
