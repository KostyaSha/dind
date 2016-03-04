FROM fedora:22
MAINTAINER kanstantsin.sha@gmail.com

ADD docker.repo /etc/yum.repos.d/docker.repo 

# Install doker
RUN dnf -y update 
RUN dnf -y install docker-engine-1.10.2
RUN dnf clean all

# Install the magic wrapper.
ADD ./wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker

# Define additional metadata for our image.
VOLUME /var/lib/docker
CMD ["wrapdocker"]
