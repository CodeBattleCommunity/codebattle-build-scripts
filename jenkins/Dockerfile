FROM jenkins/jenkins:lts
RUN /usr/local/bin/install-plugins.sh workflow-aggregator:2.5 docker-workflow:1.17 git:3.9.1

# Install the latest Docker CE binaries
USER root
RUN apt-get update -qq \
    && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
RUN apt-get update  -qq \
    && apt-get install docker-ce=18.03.0~ce-0~debian -y
RUN usermod -aG docker jenkins
