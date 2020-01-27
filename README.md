# JenkinsInsideDocker

Hello 
This project will get your started with jenkins docker image that supported with Maven and Git and docker inside it self so you can easy build you own pipline, that can start by building then test then push then deploy your docker image to dockerhub.

 --> check this sample java application with pipeline "Jenkinsfile" file   https://github.com/ahmeddifg/SampleJavaAppForJenkins
 --> check "projectflow.png"
 
 -----------------------------------------------------------
 *Folder structure
 
 "jenkins_home" : home folder for jenkins server application installtion files.
 
 "pipeline": file the contain docker file for jenkins image
 
 "root/.m2": cache folder for maven libraries.
 
 "scripts": folder contain sample scripts for this sample project.
 
            *please note your have to change "pipe2" with your pipeline name
            *Also change pathes on the "Jenkinsfile" to the correct paths.
            
 -----------------------------------------------------------
* 1-) you have to install docker in your local machine and make sure its running just try "docker ps"
      command in your console.
* 2-)Second clone the project and in the root folder execute "docker-compose build" to build the image.
* 3-)Execute "docker-compose up -d" wait until it starts on port 8810 try to access http://localhost:8810
* 4-)docker your jenkins container is running "docker ps" and copy the container ID
* 5-)execute "docker exec -it <container id you just copy> bash"  then you will be inside the container  
* 6-)new you can unlock jenkins" by execute " cat /var/jenkins_home/secrets/initialAdminPassword" 
      and copy the content and paste into jenkins page.
* 7-)when your inside the docker jenkins check "docker ps" if you get an error do the following:
        - exit
        - docker exec -it -u root <container-id> bash
        - chown 1000:1000 /var/run/docker.sock
* 7-) setup your "Credentials" create "PASS" secret text and update your account id in the push.sh file in the scripts
  
