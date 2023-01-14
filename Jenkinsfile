pipeline{
  agent { label 'mavenbuild' }
  stages {  
    stage ("cloning MY repo") {	
	  steps{
	    git changelog: false, credentialsId: 'myserver-id', poll: false, url: 'https://github.com/sankarb91/JenkinsWar/blob/release/Jenkinsfile'  	  
	  }	
	}
    stage (" Maven Build") {	
	  steps{
	   sh "/usr/share/apache-maven/mvn clean package"	  	  
	  }	
	}	
  }
}
