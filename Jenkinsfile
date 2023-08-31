pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building devenv.. '
		sh 'make image'
            }
        }
    }
}