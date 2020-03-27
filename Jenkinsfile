node {
    checkout scm
    //856f9aac-970e-4e9c-81de-f244e2bb973b
     docker.withRegistry('https://hub.docker.com/', "e554454d-8ea5-4381-b2fa-6b2a941a0a37") {
        def customImage = docker.build("kukushka/simpe-server:${env.BUILD_ID}")
        customImage.push('latest')
    }   
}