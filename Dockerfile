FROM ubuntu:trusty

RUN apt-get update
RUN apt-get install python-setuptools python-dev build-essential curl vim npm git make ssh zip -y

RUN  curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN  unzip awscli-bundle.zip
RUN  ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws



