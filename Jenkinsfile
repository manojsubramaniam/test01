pipeline{
        agent any
        parameters {
            choice(
                name: 'main','branch01','branch02',
                choices: '${name}',
                description: 'to refresh the list, go to configure, disable "this build has parameters", launch build (without parameters)to reload the list and stop it, then launch it again (with parameters)'
            )
}
stages {
    stage("Run Tests") {
        steps {
            sh "echo SUCCESS on ${BranchName}"
        }
    }
}
 
	stages{
		stage('Checkout') {
			steps{
				git branch: 'main', credentialsId: '9c2554ea-60d2-4fc7-8612-fb72139b3b89', url: 'https://github.com/manojsubramaniam/test01.git'
   		
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
