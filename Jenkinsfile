
pipeline {
    agent any
    stages {
      stage ('checkout') {
          steps 
          {
          git credentialsId: 'GITHUB', url: 'https://github.com/devmabh/cicd-pipeline-gradle.git'
          }
      }              
      stage ('Build') {
      steps {
        echo 'Running Build Automation'
        sh './gradlew build --no-daemon' 
        archiveArtifacts artifacts: 'dist/sampleapp.zip'
      }
     }
    }
   }
   
