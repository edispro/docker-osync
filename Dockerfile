FROM ubuntu:14.04


MAINTAINER CHELABIM 

# Download packages
RUN apt-get update && apt-get install -y wget inotify-tools rsync ssh vim

# Get osync then extract it
RUN wget https://github.com/deajan/osync/archive/v1.3-beta1.tar.gz  && tar xvf /v1.3-beta1.tar.gz  

# Set work directory
WORKDIR /osync-1.3-beta1

# Install the osync to run it like a daemon 
RUN ./install.sh --silent 

# Create volume data for osync initiator
VOLUME /data
RUN touch /var/log/osync.log 
RUN chmod 777 /var/log/osync.log
CMD /etc/init.d/osync-srv start && tail -f /var/log/osync.log 
