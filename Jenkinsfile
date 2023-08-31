pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building devenv ... g++ make '
		sh 'make image'
            }
            steps {
                echo 'Building devenv ... g++ cmake '
		sh 'make image BUILDCHAIN=cmake'
            }
            steps {
                echo 'Building devenv ... clang++ make '
		sh 'make image CXX=clang++'
            }
            steps {
                echo 'Building devenv ... clang++ cmake '
		sh 'make image CXX=clang++ BUILDCHAIN=cmake'
            }
        }
    }
}