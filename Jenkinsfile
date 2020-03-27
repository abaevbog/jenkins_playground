node {
    checkout scm
    sh 'docker images'
    def customImage = docker.build("kukushka/simpe-server:${env.BUILD_ID}")
    customImage.push('latest')
}