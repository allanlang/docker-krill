FROM docker.io/centos
MAINTAINER Allan Lang <lang.allan@gmail.com>
RUN yum -y install unzip
RUN yum -y install java-1.8.0-openjdk-devel
RUN curl https://s3-eu-west-1.amazonaws.com/com-goongo-sharing/jboss-eap-6.4.0.zip > /tmp/eap.zip
RUN mkdir -p /opt/jboss
RUN unzip /tmp/eap.zip -d /opt/jboss
