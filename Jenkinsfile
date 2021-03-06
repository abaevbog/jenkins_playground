node {
    stage('Check out') {
        checkout scm
    }
    stage('Server build'){
        docker.withRegistry('', "b023ab53-7cbe-4812-81d9-3d4a1275f490") {
            def serverImage = docker.build("kukushka/simpe-server:${env.BUILD_ID}", "server/")
            serverImage.push('latest')
        }   
    }
    stage('Friend build'){
        docker.withRegistry('', "b023ab53-7cbe-4812-81d9-3d4a1275f490") {
            def friendImage = docker.build("kukushka/servers_friend:${env.BUILD_ID}", "servers_friend/")
            friendImage.push('latest')
        }   
    }
    stage('Deploy') {
        sh "kubectl get deployments -o jsonpath='{.items[*].metadata.name}'"
        def deployments = sh(script: " kubectl get deployments -o jsonpath='{.items[*].metadata.name}'", returnStdout: true)
        sh "echo ${deployments}"
        if (deployments != null && deployments.contains('server')) {
            echo 'Server deployment exists! Updating.'
            try {
                sh 'kubectl rollout restart deployment server'
            } catch(exc){
                echo "Caught exception: ${exc}"
            }
        } else {
            echo 'Server deployments does not exist. Creating...'
            sh 'kubectl create -f ./kube/server_deployment.yaml'
            sh 'kubectl create -f ./kube/server_service.yaml'
        }

        if (deployments != null && deployments.contains('friend')) {
            echo 'Servers friend deployment exists! Updating.'
            try{
                sh 'kubectl rollout restart deployment friend'
            } catch(exc){
                echo "Caught exception: ${exc}"
            }
        } else {
            echo 'Deployment of servers friend does not exist exist. Creating...'
            sh 'kubectl create -f ./kube/friend_deployment.yaml'
            sh 'kubectl create -f ./kube/friend_service.yaml'
        }
    }
    
}