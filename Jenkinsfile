pipeline{
	agent any

	stages{

		stage("build"){

			steps {
				echo'building the appilication..'
			}
		}
		stage("test"){
		      when {
			      expression{
				env.BRANCH_NAME == 'master'
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
