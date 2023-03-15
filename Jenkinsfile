pipeline {
    agent any

    stages {
        stage('构建二进制制品') {
            steps {
                 sh 'build.sh'
            }
        }
        stage('构建docker镜像') {
            steps {
                 sh 'docker build . -t JenkinsDockerExample:JenkinsDockerExample'
            }
        }
        stage('启动docker容器') {
            steps {
                 sh 'docker run JenkinsDockerExample:JenkinsDockerExample -p10080:8080'
            }
        }
    }

}