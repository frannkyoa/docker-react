pipeline {
      agent any
      environment {
      registry = "frannyoa/frankie_docker_1repo"
      registryCredential = 'DockerHubCrednetials'
      dockerImage = ''
      imagename = 'frannyoa/frankie_docker_1repo:react'
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
          dockerImage = docker.build registry +:'imagename'
        }
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