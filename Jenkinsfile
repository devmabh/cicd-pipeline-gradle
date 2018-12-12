
pipeline {
    agent any
    stages {
      stage ('checkout') {
          steps 
          {
          git credentialsId: 'GITHUB', URL: 'https://git@github.com:devmabh/cicd-pipeline-gradle'
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
   
