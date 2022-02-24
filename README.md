# inception

<img src="https://github.com/loupascreau/inception/blob/main/pictures/docker.png" alt="docker logo" width=300/>
<img src="https://github.com/loupascreau/inception/blob/main/pictures/docker-compose.png" alt="docker logo" width=300/>

Inception is a school projet 42  
The objective is to make us discover the system administration using **Docker** and **Docker compose**.

<h2>Docker commands</h2>

* List all images :  
`sudo docker images -a`  

* List all containers :  
`sudo docker ps -a`  

* Remove one or more containers :  
`sudo docker rm <ID_container>`  

* Remove one or more images :  
`sudo docker rmi <ID_container>`  

<h2>Docker-compose commands</h2>

The following command has to be run from the root directory where the `docker-compose.yml` file is present.  
  
* Run a Docker-compose :  
`sudo docker-compose up`  

* See docker-compose with ENV resolution :  
`sudo docker-compose config`  