# Dockerized-AWSCLI

#### This is a Docker Image with AWS CLI built into it.

There are lots of AWS CLI Docker images out there, but I wanted to build my own.

I added the tools I needed, curl, npm, git and vi.

I use it to pull down Github repos, and build them, so you can pass you Amazon Keys and the Github credentials to automatically pull down a repo, build if needed, and push it to AWS.

#### This is how I use it

`docker run -it -e AWS_ACCESS_KEY_ID=XXXXXXXXXXXX -e AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXXXX -e AWS_DEFAULT_REGION=us-east-1 oktaadmin/awscli bash -c 'git clone https://pmcdowell-okta:yourpassword@github.com/jimmyjohn/okta-aws.git; bash'`

