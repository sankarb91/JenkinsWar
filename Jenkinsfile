pipeline {
  agent { label 'maven' }
  stages {  
    stage ("cloning MY repo") {	
	  steps{
	    git changelog: false,  poll: false, url: 'https://github.com/saravananajay/JenkinsWar.git'  	  
	  }	
	}
    stage (" Maven Build") {	
	  steps{
	   sh "/usr/share/apache-maven/mvn clean package"	  	  
	  }	
	}	
  
  }

}
