pipeline {
    agent any
    stages {
        stage('Build Application') {
            steps {
                sh 'mvn -f pom.xml clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }

        stage('Create Tomcat Docker Image'){
            steps {
                sh "pwd"
                sh "ls -a"
                sh "ls"
                sh "docker info" 
                sh "docker build -t jenkins-demo:${BUILD_NUMBER} ."
                sh "docker tag jenkins-demo:${BUILD_NUMBER} jenkins-demo:latest"
                sh "docker images"
            }
        }

    }
}