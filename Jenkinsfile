pipeline{
	agent any
	environment{
	    NEW_VERSION ='1.3.0'
	
	}

	stages{

		stage("build"){

			steps {
				echo'building the appilication..'
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
			}
		}
	}
}
