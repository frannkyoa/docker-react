pipeline {
      agent any
      environment {
      registry = "frannyoa/frankie_docker_1repo"
      registryCredential = 'DockerHubCredentials'
      imagename = 'react'
    }
    stages {
      stage('Cloning Git') {
        steps {
          git 'https://github.com/frannkyoa/img-docker-react.git'
        }
      }
      stage('Build docker Image'){
        steps{
          sh "docker build -t registry + ":${imagename}""
        }
      }
      stage('Push Docker image to DockerHub') {
        steps{
          script {
            docker.withRegistry('', registryCredential){
              dockerImage.Push("$BUILD_NUMBER")
              dockerImage.Push('latest')
            }
          }
        }
      }
    }
}