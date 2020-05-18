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
ENV DB_HOST=172.19.0.1  -- database host ( As in docker, please use the default gateway ip to access host database)<br/>
ENV DB_PORT -- database port<br/>
