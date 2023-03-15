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
         stage('更新nginx配置文件 和重启nginx') {
            steps {
                 sh 'cp nginx.conf /opt/nginx/conf/*  &&  /data/soft/nginx/sbin/nginx -s reload'
            }
        }
         stage('销毁老的docker容器') {
            steps {
                 sh 'docker  rm -f  `docker ps  | grep jenkins_docker_example:jenkins_docker_example | cut -c 1-12`'
            }
        }
        stage('启动docker容器') {
            steps {
                 sh 'docker run -d -p10080:9090 jenkins_docker_example:jenkins_docker_example '
            }
        }
    }

}