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
          sh "docker build . -t frannyoa/frankie_docker_1repo:${imagename}"
        }
      }
      stage('Push Docker image to DockerHub') {
        steps{
          withCredentials([string(credentialsId: 'frannyoa', variable: 'dockerhubcredentials')]) {
          sh "docker login -u frannyoa -p ${dockerhubcredentials}"
          sh " docker push frannyoa/frankie_docker_1repo:${imagename}"
          } 
        }
      }
    }
}