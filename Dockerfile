FROM ubuntu:12.10

# add source for webupd8 java
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu quantal main" | tee -a /etc/apt/sources.list.d/java.sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
RUN apt-get update 

# install java
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -yq oracle-java7-installer
