FROM ubuntu:latest
RUN apt-get -y update
COPY ./home/ubuntu/docker/text.txt 


//Run scp -r somewhere:remote_dir ./local_dir
//Add COPY ./local_dir some_path to your Dockerfile
//Run docker build
