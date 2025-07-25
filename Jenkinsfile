pipeline {
    agent any

    stages {
        stage('Pull Repo') {
            steps {
                echo '✅ Repository pulled successfully!'
                bat 'dir'   // Use 'sh "ls -la"' if on Linux
            }
        }
        stage('Test Message') {
            steps {
                echo '✅ Jenkins pipeline runs correctly.'
            }
        }
    }
}
