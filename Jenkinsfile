 pipeline {
    agent any
    
    tools {
        terraform 'terraform'
    }
    stages {
        stage ('checkout scm') {
                       steps {
                git branch: 'master', credentialsId: 'git-hub', url: 'https://github.com/sravyalakkakula/srjenkins'
            }
        }
        stage ('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage ("terraform fmt") {
            steps {
                sh 'terraform fmt'
            }
        }
        stage ("terraform validate") {
            steps {
                sh 'terraform validate'
            }
        }
        stage ("terrafrom plan") {
            steps {
                sh 'terraform plan'
            }
        }
        stage ("terraform apply") {
            steps {
                sh 'terraform apply -approved'
            }
        }
    }
}
