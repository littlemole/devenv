pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building devenv ... g++ make '
		sh 'make image'
            }
	}
        stage('Build') {
            steps {
                echo 'Building devenv ... g++ cmake '
		sh 'make image BUILDCHAIN=cmake'
            }
	}
        stage('Build') {
            steps {
                echo 'Building devenv ... clang++ make '
		sh 'make image CXX=clang++'
            }
	}
        stage('Build') {
            steps {
                echo 'Building devenv ... clang++ cmake '
		sh 'make image CXX=clang++ BUILDCHAIN=cmake'
            }
        }
    }
}