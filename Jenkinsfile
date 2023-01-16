pipeline {
  agent {
    label 'masternode'
  }
  parameters {
    string defaultValue: 'prod', description: 'prod|stg|dev', name: 'environmental'
  }
  stages {
    stage('GIT-CLONE') {
      steps {
      git credentialsId: 'mydeploy', url: 'https://github.com/saravananajay/JenkinsWar.git' 
      }
    }
    stage('MAVEN-BUILD') {
      steps {
      sh  """
	   
	  /usr/share/apache-maven//mvn clean install 
	   
	  """
      }
    }	
  }
}
