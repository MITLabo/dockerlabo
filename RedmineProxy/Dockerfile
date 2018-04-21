FROM redmine


RUN apt-get update && apt-get install -y \
  gcc \
  make \
  vim \
  wget \
  curl

#This param is your VirtualBox VM*s gateway adress.
ARG PHOST="10.0.2.2"
ARG PPORT="8080"
ARG PUSER="XXXXX"
ARG PPASS="ZZZZZ"
 
RUN echo $'[powershell]\n\
#baseurl='$BASEURL$'\n\
proxy-user = "'$PUSER$':'$PPASS$'"
proxy = "http://$PHOST$:$PPORT$"
>> /etc/curlrc
