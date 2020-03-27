node {
    checkout scm
    sh 'whoami'
    def customImage = docker.build("kukushka/simpe-server:${env.BUILD_ID}")
    customImage.push('latest')
}