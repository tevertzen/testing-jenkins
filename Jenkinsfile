#Hi
pipeline {
    agent { label 'docker' }

    parameters {
        string defaultValue: 'EDUARDO', description: '', name: 'NAME', trim: false
        string defaultValue: 'RIVERO', description: '', name: 'LASTNAME', trim: false
    }


    stages {
        stage('Validate pipeline') {
            steps { validateDeclarativePipeline 'Jenkinsfile' }
        }

        stage('build') {
            steps {
                git "https://github.com/eduardoriveror/testing-jenkins.git"
                sh "chmod +x basic-script.sh"
                sh "./basic-script.sh ${NAME} ${LASTNAME}"
            }
        }
    }

    post {
        always { cleanWs() }
    }
}
