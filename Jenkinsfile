node {
    checkout scm
    
     docker.withRegistry('https://hub.docker.com/', "856f9aac-970e-4e9c-81de-f244e2bb973b") {
        def customImage = docker.build("kukushka/simpe-server:${env.BUILD_ID}")
        customImage.push('latest')
    }   
}