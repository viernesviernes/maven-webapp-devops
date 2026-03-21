pipeline {
    agent any
    
    tools {
        maven 'Maven 3' 
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh 'docker login -u $USERNAME -p $PASSWORD'
                }
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t mjviernes/maven-webapp-devops .'
            }
        }
        stage('Docker Push') {
            steps {
                sh 'docker push mjviernes/maven-webapp-devops'
            }
        }
    }
}
