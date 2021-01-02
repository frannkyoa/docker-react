pipeline {
    agent any
    environment {
    registry = "frannyoa/frankie_docker_1repo"
    registryCredential = 'DockerHubCrednetials'
    dockerImage = ''
    DOCKER_TAG = getDockerTag()
    }
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/frannkyoa/img-docker-react.git'
      }
    }
    stage('Build Docker image') {
      steps{
         {
          sh " docker build -t frannyoa/frankie_docker_1repo:REACT"
        }
      }
    }
}
}

def getDockerTag() {
    def tag = sh script: 'git rev-parse HEAD', returnStdout: true
    return tag
}