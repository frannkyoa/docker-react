pipeline {
      agent any
      environment {
      registry = "frannyoa/frankie_docker_1repo"
      registryCredential = 'DockerHubCredentials'
      dockerImage = ''
    }
    stages {
      stage('Cloning Git') {
        steps {
          git 'https://github.com/frannkyoa/img-docker-react.git'
        }
      }
      stage('Build docker Image'){
        steps{
           script{
             dockerImage = docker.build registry + ":$BUILD_NUMBER"
           }
        }
      }
      stage('Push Docker image to DockerHub') {
        steps{
          script{
              docker.withRegistry( '', registryCredential ) { 
              dockerImage.push()
          }        
         } 
        }
      }
    }
}