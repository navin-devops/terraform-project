pipeline {
    agent any

    environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('gcp-service-account')  // Replace with your Jenkins credential ID
    }

    stages {
        stage('Checkout Code') {
            steps {
                // Checkout Terraform code from your repository (GitHub, GitLab, etc.)
                checkout scm
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    // Initialize Terraform 2
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    // Show the execution plan
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    // Apply the infrastructure changes
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }

        stage('Terraform Output') {
            steps {
                script {
                    // Optionally, show the output of the applied infrastructure
                    sh 'terraform output'
                }
            }
        }
    }

    post {
        success {
            echo 'Terraform apply was successful!'
        }
        failure {
            echo 'Terraform apply failed!'
        }
    }
}
