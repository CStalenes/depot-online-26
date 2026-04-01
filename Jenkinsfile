pipeline {
    agent any
    stages {
        stage('CleanUp de Workspace'){
            steps {
                cleanWs()
            } 
        }
        stage('Cloner le Github'){
	    steps {
	        git branch: 'main', url: 'https://github.com/CStalenes/depot-online-26.git'
	    }
	}
    }
}