pipeline {
    agent any
    stages {
        stage('CleanUp de Workspace'){
            steps {
                cleanWs()
            } 
        }
        stage('Cloner le Github'){
HEAD
	    steps {
	        git branch: 'main', url: 'https://github.com/CStalenes/depot-online-26.git'
	    }
	}
    }
}

	    	steps {
				git branch: 'main', url: 'https://github.com/CStalenes/depot-online-26.git'
	        }
	    }
		stage('install docker'){
			steps {
				sh 'sudo apt autoremove docker.io docker-compose -y'
				sh 'sudo apt update'
				sh 'sudo apt install apt-transport-https ca-certificates curl software-properties-common -y'
				sh 'sudo apt install docker.io -y'
				sh 'sudo apt update'
				sh 'sudo chmod 666 /var/run/docker.sock'
				sh 'sudo usermod -aG docker $USER'
				sh 'sudo systemctl restart docker.service'
			}
		}
    }
}
 2b2320e1f4b8ebb12d3441b0af28552a004506ef
