FROM ubuntu:trusty

RUN apt-get update
RUN apt-get install python-setuptools python-dev build-essential curl vim npm git make ssh zip -y
RUN npm config set registry http://registry.npmjs.org/

# Install AWS Stuff
RUN  curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN  unzip awscli-bundle.zip
RUN  ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

# Install node.js
RUN curl --silent --location https://deb.nodesource.com/setup_10.x | sudo bash -
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential

# Bundle app source
# Trouble with COPY http://stackoverflow.com/a/30405787/2926832
COPY . /src

# Install app dependencies
RUN cd /src; npm install



