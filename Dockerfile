FROM centos:7

RUN yum -y update && \
    yum -y install epel-release && \
    yum -y install nodejs npm && \ 
    yum clean all

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080

CMD [ "npm", "start" ]

