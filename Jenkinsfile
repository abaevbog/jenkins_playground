node {
    checkout scm
    //856f9aac-970e-4e9c-81de-f244e2bb973b
     docker.withRegistry('', "b023ab53-7cbe-4812-81d9-3d4a1275f490") {
        def customImage = docker.build("kukushka/simpe-server:${env.BUILD_ID}")
        customImage.push('latest')
    }   
}