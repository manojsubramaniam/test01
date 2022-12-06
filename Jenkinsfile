pipeline{
	agent any
	parameters {
		//string(name: 'Project', defaultValue: 'sample project tuesday', description: 'sample project for today')
		choice(name: 'Branch', choices: ['main', 'branch01', 'branch02'], description: 'select the branch')
	}
 
	stages{
		stage("Branch"){
			steps {
				echo'${Branch} is the branch'
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
