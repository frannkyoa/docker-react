pipeline {
    agent any
    environment {
    registry = "frannyoa/frankie_docker_1repo"
    registryCredential = 'DockerHubCrednetials'
    dockerImage = ''
    }
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/frannkyoa/img-docker-react.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
}
}