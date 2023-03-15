pipeline {
    agent any

    stages {
        stage('构建二进制制品') {
            steps {
                 sh 'chmod +x ./build.sh && ./build.sh'
            }
        }
        stage('构建docker镜像') {
            steps {
                 sh 'docker build . -t jenkins_docker_example:jenkins_docker_example'
            }
        }
        stage('启动docker容器') {
            steps {
                 sh 'docker run  -d -p10080:8080 jenkins_docker_example:jenkins_docker_example '
            }
        }
    }

}