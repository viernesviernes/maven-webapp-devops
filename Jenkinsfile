pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                // Change 'bat' to 'sh' for Linux/Docker environments
                sh 'mvn clean package'
            }
        }
    }
}
