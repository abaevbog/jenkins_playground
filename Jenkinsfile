node {
    checkout scm
    whoami
    def customImage = docker.build("kukushka/simpe-server:${env.BUILD_ID}")
    customImage.push('latest')
    echo 'done!'
}