pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/akankshapatil13/Terraform-Automation.git']])
            }
        }
    
        stage ("terraform init") {
            steps {
                sh ("terraform init -reconfigure") 
            }
        }
        stage ("terraform validate") {
            steps {
                sh ("terraform validate") 
            }
        }
        
        stage ("plan") {
            steps {
                sh ('terraform plan') 
            }
        }
        stage ("apply") {
            steps {
                sh ('terraform apply') 
            }
        }

        stage (" Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
}
