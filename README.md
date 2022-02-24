# inception

<img src="https://github.com/loupascreau/inception/blob/main/pictures/docker.png" alt="docker logo" width=300/>
<img src="https://github.com/loupascreau/inception/blob/main/pictures/docker-compose.png" alt="docker logo" width=300/>

Inception is a school projet 42.</br>
The objective is to make us discover the system administration using **Docker** and **Docker compose**.

<h2>Docker commands</h2>

* List all images : </br>
`sudo docker images -a` </br>

* List all containers : </br>
`sudo docker ps -a` </br>

* Remove one or more containers : </br>
`sudo docker rm <ID_container>` </br>

* Remove one or more images : </br>
`sudo docker rmi <ID_container>` </br>

<h2>Docker-compose commands</h2>

The following command has to be run from the root directory where the `docker-compose.yml` file is present.  
  
* Run a Docker-compose : </br>
`sudo docker-compose up` </br>

* See docker-compose with ENV resolution :  
`sudo docker-compose config`  