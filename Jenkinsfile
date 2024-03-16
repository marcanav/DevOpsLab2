pipeline {
    agent {
        // Specify the agent to run Windows
        label 'windows'
    }

    tools {
        // Make sure Maven is installed under this name in Global Tool Configuration
        maven 'Maven' 
        // Ensure JDK is setup
        jdk 'JDK'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checks out the source code from Git
                checkout scm
            }
        }

        stage('Build Maven Project') {
            steps {
                // Run Maven build
                bat 'mvn clean install'
            }
        }

        stage('Code Coverage') {
            steps {
                // Generate JaCoCo code coverage report
                bat 'mvn jacoco:report'

                // Assuming you want to archive the reports and add a post-build action
                script {
                    def jacocoReportPath = '**/target/site/jacoco/*.html'
                    // Archive the JaCoCo reports
                    archiveArtifacts artifacts: jacocoReportPath, fingerprint: true
                }
            }
        }
    }

    post {
        // What to do after the pipeline has completed
        success {
            // Actions to perform on success
            echo 'Build succeeded.'
        }
        failure {
            // Actions to perform on failure
            echo 'Build failed.'
        }
        always {
            // Actions to always perform
            echo 'Pipeline completed.'
        }
    }
}
