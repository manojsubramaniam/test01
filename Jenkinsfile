pipeline{
	agent any
	parameters {
		//string(name: 'Project', defaultValue: 'sample project tuesday', description: 'sample project for today')
		choice(name: 'Branch', choices: ['main', 'branch01'], description: 'select the branch')
		
	}
 
	stages{
		stage('Checkout') {
			steps{
				git branch: '${pramas.Branch}', credentialsId: '9c2554ea-60d2-4fc7-8612-fb72139b3b89', url: 'https://github.com/manojsubramaniam/test01.git'
   		
			}
		}
		stage("build docker image"){
		     	steps {
				echo'building docker image..'
			}
		}

		stage("docker container"){
			steps {
				echo'running docker image into container..'
			}
		}
		stage("restart nginx"){
			steps {
				echo'restarting nginx..'
			}
		}
	
	}
}
