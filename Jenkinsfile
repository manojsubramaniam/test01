pipeline{
	agent any
	environment{
	    NEW_VERSION = '1.3.0'
	    SERVER_CREDENTIALS = credentials('server-credentials')
	
	}

	stages{

		stage("build"){

			steps {
				echo'building the appilication..'
				echo"building version ${NEW_VERSION}"
			}
		}
		stage("test"){
		      when {
			      expression{
				env.BRANCH_NAME == 'main'
			      }
			}

			steps {
				echo'testing the appilication..'
			}
		}

		stage("deploy"){

			steps {
				echo'deploying the appilication..'
				echo"deploying with ${SERVER_CREDENTIALS}"
			}
		}
	}
}
