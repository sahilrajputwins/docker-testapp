pipeline{
    agent any
    environment{
        container1= 'testapp-1'
        container2= 'mongo-1'
        container3= 'mongo-express-1'
    }
    stages{
        stage("Docker compose"){
            steps{
                script{
                    def ifExists = bat(script: 'docker ps -a --format "{{.Names}}" | findstr %container1% %container2% %container3%)', returnStatus: true)
                    if(ifExists==0){
                        bat 'docker compose -f light-form.yaml down'
                    } else {
                        echo 'running the containers...'
                    }
                    bat 'docker compose -f light-form.yaml build'
                    bat 'docker compose -f light-form.yaml up -d'
                }              
            }
        }
        stage("Deployed"){
            steps{
                echo 'Deployed successfully...'
            }
        }
    }
}