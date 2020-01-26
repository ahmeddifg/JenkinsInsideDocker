# JenkinsInsideDocker

Hello 

This project will get your started with jenkins docker image that supported with Maven and Git and docker inside it self
so you can easy build you own pipline, that can start by building then test then push then deploy your docker image to dockerhub.

* 1-) you have to install docker in your local machine and make sure its running just try "docker ps"
      command in your console.
* 2-)Second clone the project and in the root folder execute "docker-compose build" to build the image.
* 3-)Execute "docker-compose up -d" wait until it starts on port 8810 try to access http://localhost:8810
* 4-)docker your jenkins container is running "docker ps" and copy the container ID
* 5-) execute "docker exec -it <container id you just copy> bash"  then you will be inside the container  
* 6-) new you can unlock jenkins" by execute " cat /var/jenkins_home/secrets/initialAdminPassword" 
      and copy the content and paste into jenkins page.
  
  To get insight about how this jenkins is build check out /pipeline/dockerfile there
