pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                // Build Docker image with a meaningful tag
                bat 'docker build -t my-python-app:latest .'
            }
        }
        stage('Run Tests in Docker') {
            steps {
                // Run tests inside the Docker container if your Dockerfile's CMD supports testing
                // If you want to run separate tests, either override CMD or add a test stage before build
                // Here assuming tests are run outside Docker, you can remove this stage if you don't run tests in Docker
                echo 'Add your test commands here if needed'
            }
        }
        stage('Deploy') {
            steps {
                // Stop and remove any existing container to avoid conflicts
                bat 'docker stop my-python-app || exit 0'
                bat 'docker rm my-python-app || exit 0'
                // Run the container detached, exposing port 8000
                bat 'docker run -d --name my-python-app -p 8000:8000 my-python-app:latest'
            }
        }
    }

    post {
        always {
            // Optional: show currently running containers for verification
            bat 'docker ps'
        }
    }
}

#pipeline {
    #agent any
    #stages {
    #    stage('Test') {
     #       steps {
      #          bat 'pytest tests'
       #     }
        #}
    #}
#}
