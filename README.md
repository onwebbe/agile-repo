# Agile Retrospective board
A Django based Agile Retrospective board

## System requirement
Database: Mysql<br/>
Python3<br/>
Python package required please check requirement.txt

## Environment parameters
ENV DB_NAME -- schema name<br/>
ENV DB_USER -- database name<br/>
ENV DB_PWD -- database password<br/>
ENV DB_HOST -- database host ( As in docker, please use the default gateway ip to access host database)<br/>
ENV DB_PORT -- database port<br/>
SECRET_KEY -- not using, but could not be blank, put any character will be fine<br/>
PYTHON_ENV -- production or stagin<br/>

## Docker and DockerConfig
please use docker build in ./docker folder<br/>
go docker folder<br/>
run below command to create your docker<br/>
docker build -t agile_repo:latest .

Database Related settings in Dockerfile<br/>
ENV DB_NAME=agileretro<br/>
ENV DB_USER=root<br/>
ENV DB_PWD=123456<br/>
ENV DB_HOST=mysql  -- database host ( As in docker, using network aliases 'mysql' to access mysql service)<br/>
ENV DB_PORT -- database port<br/>

In docker-compose file, please define your network and also add mysql as link and dependency for this image, the network aliases should be 'mysql'

## Docker Compose sample
version: "3"<br/>
networks:<br/>
  local:<br/>
  db_apps:<br/>
    driver: bridge<br/>
<br/>
services:<br/>
  mysql:<br/>
    image: mysql:5.7<br/>
    ports:<br/>
      - 6336:3306<br/>
    networks:<br/>
      db_apps:<br/>
        aliases:<br/>
          - mysql<br/>
    volumes:<br/>
      - /data/docker/docker-volumns/mysql-data/conf:/etc/mysql/conf.d<br/>
      - /data/docker/docker-volumns/mysql-data/logs:/logs<br/>
      - /data/docker/docker-volumns/mysql-data/data:/var/lib/mysql<br/>
    environment:<br/>
      - MYSQL_ROOT_PASSWORD=123456<br/>
    container_name: mysql-Production<br/>
    restart: always<br/>
  aglie_repo:<br/>
    image: 10.129.126.28:5000/agile_repo:latest<br/>
    container_name: agile_repo<br/>
    depends_on: <br/>
      - mysql <br/>
    ports:<br/>
      - 9999:9999<br/>
    networks:<br/>
      - db_apps<br/>
    links:<br/>
      - mysql:mysql<br/>
    restart: always<br/>

## Initialize Database
Initialize database data already exists under folder ./initialDatabase<br/>
Untar initialData.tar.gz and use mysql dump tool to import the schema with data