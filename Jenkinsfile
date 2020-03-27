node {
    checkout scm
    //856f9aac-970e-4e9c-81de-f244e2bb973b
     docker.withRegistry('https://hub.docker.com/', "f5266dd7-f5c4-4300-b03e-e91a5b6ef6aa") {
        def customImage = docker.build("kukushka/simpe-server:${env.BUILD_ID}")
        customImage.push('latest')
    }   
}