node{
    stage('git checkout'){
        git 'https://github.com/shubhamkushwah123/edureka-pipeline-demo.git'
    }
    
    stage('clean'){
        sh 'mvn clean'
    }
    
    stage('compile - test -package'){
        sh 'mvn package'
    }
    // addressbook.war - > target/addressbook.war
    
    stage('Create docker image'){
    //    sudo docker build -t shubhamkushwah123/addressbook:1.0 .    -- Docker image would be created in ws
    }
    
    stage('Push docker image to docker hub'){
    
    withCredentials([string(credentialsId: 'dummy-secrets', variable: 'my-docker-password-dummy')]) {
     //   sudo docker login -u shubhamkushwah123 -p my-docker-password-dummy
    //   sudo docker push shubhamkushwah123/addressbook:1.0
}
    }
    
    stage('Ansible - Configure Servers and Deploy'){
        
        ansiblePlaybook become: true, installation: 'ansible', inventory: '/etc/ansible/hosts', playbook: 'ansible-configuration-playbook.yml'
    }
}
