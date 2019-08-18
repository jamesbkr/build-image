FROM alpine:3.7
MAINTAINER "Slalom Houston - DevOps Team"
 
RUN apk add --update \
	 git \
	 openssl \
	 curl \
	 unzip \
	 wget \
	 python \ 
	 python3 \
	 py-pip \
	 python-dev \
	 build-base \
	 nodejs
	


RUN pip install awscli 
RUN apk --purge -v del py-pip
RUN rm -rf /var/cache/apk/*
	 
RUN curl -O https://releases.hashicorp.com/terraform/0.12.6/terraform_0.12.6_linux_amd64.zip

RUN unzip terraform_0.12.6_linux_amd64.zip

RUN mv terraform /usr/bin/terraform
RUN rm terraform_0.12.6_linux_amd64.zip
