node {
    stage('Check out') {
        checkout scm
    }
    stage('Image build'){
        docker.withRegistry('', "b023ab53-7cbe-4812-81d9-3d4a1275f490") {
            def customImage = docker.build("kukushka/simpe-server:${env.BUILD_ID}")
            customImage.push('latest')
        }   
    }
    stage('Deploy') {
        sh 'kubectl rollout restart deployment kuku'
    }
    
}