FROM openjdk:8

LABEL maintainer="Marcel Parciak <marcel.parciak@med.uni-goettingen.de>"

VOLUME ["/var/data/input","/var/data/output","/var/data/job"]

COPY incrontab.e /incrontab.e
COPY ./runJob.sh /root/runJob.sh

RUN apt-get update \
  && apt-get -y install incron \
  && echo "root" >> /etc/incron.allow \
  && incrontab /incrontab.e \
  && chmod +x /root/runJob.sh

CMD ["/usr/sbin/incrond", "-n"]
