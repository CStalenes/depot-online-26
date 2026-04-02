pipeline {
    agent any

    stages {
        stage('CleanUp de Workspace') {
            steps {
                cleanWs()
            }
        }

        stage('Cloner le GitHub') {
            steps {
	        	git branch: 'main', url: 'https://github.com/CStalenes/depot-online-26.git'
            }
        }

        stage('install Docker') {
            steps {
                sh 'sudo apt autoremove docker* -y'
                sh 'sudo apt autoremove docker.io docker-compose -y'
                sh 'sudo apt update'
                sh 'sudo apt install apt-transport-https ca-certificates curl software-properties-common -y'
                sh 'sudo apt install docker.io -y'
                sh 'sudo apt update'
                sh 'sudo chmod 666 /var/run/docker.sock'
                sh 'sudo usermod -aG docker $USER'
                // sh 'sudo systemctl start docker.service'
                // sh 'sudo systemctl start docker.service'
            }
        }

        stage('build image docker') {
            steps {
                script {
                    sh 'sudo docker image rm -f "mynginx:latest"'
                    sh 'sudo docker build -t "mynginx:latest" .'
                    sh 'sudo docker image ls'
                }
            }
        }

        stage('Create conteneur nginx') {
            steps {
                // Nettoyage de l'ancien conteneur s'il existe
                sh 'sudo docker rm -f contnginx01'
                
                // Lancement du nouveau conteneur
                sh 'sudo docker run -d --name contnginx01 --hostname contnginx01 mynginx:latest'
                
                // Vérification du statut
                sh 'sudo docker ps'
            }
        }
    }
}

