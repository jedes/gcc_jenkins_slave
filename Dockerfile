FROM octasic/base_jenkins_slave

LABEL Description="Jenkins slave for amd64 builds"

USER root

RUN apt-get -y update && \
	apt-get install -y g++ automake && \
	apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER jenkins
