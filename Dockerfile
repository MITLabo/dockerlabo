FROM centos
RUN yum -y update
RUN yum -y install curl
ENV SITE_URL https://google.com/
WORKDIR /data
VOLUME /data
CMD sh -c "curl -L $SITE_URL > /data/results"
