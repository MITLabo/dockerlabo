FROM redmine


RUN apt-get update && apt-get install -y \
  gcc \
  make \
  vim \
  wget \
  curl

#This param is your VirtualBox VM's gateway adress.
ARG PHOST="10.0.2.2"
ARG PPORT="8080"
ARG PUSER="XXXXX"
ARG PPASS="ZZZZZ"
ARG PROXY=$PUSER:$PPASS@$PHOST:$PPORT

#ENV http_proxy=http://$PROXY
#ENV HTTP_PROXY=http://$PROXY
#ENV https_proxy=https://$PROXY
#ENV HTTPS_PROXY=https://$PROXY

#RUN echo '\
#proxy-user = "'$PUSER':'$PPASS'"\n\
#proxy = "http://'$PHOST':'$PPORT'"\n'\
#>> /etc/curlrc

#RUN echo '\
#http_proxy=http://'$PHOST':'$PPORT'/\n\
#https_proxy=https://'$PHOST':'$PPORT'/\n\
#ftp_proxy=http://'$PHOST':'$PPORT'/\n\
#proxy_user='$PUSER'\n\
#proxy_password='$PPASS'\n'\
#>> /etc/wgetrc

RUN cd /usr/src/redmine/plugins/ && \
git clone https://github.com/haru/redmine_wiki_extensions.git && \
git clone https://github.com/tkusukawa/redmine_work_time.git && \
git clone https://github.com/deecay/redmine_pivot_table.git && \
git clone https://github.com/suer/redmine_issues_summary_graph.git && \
git clone https://github.com/stgeneral/redmine-progressive-projects-list.git progressive_projects_list&& \
git clone https://github.com/yuuu/redmine_nikoca_re.git && \
git clone https://github.com/matsukei/redmine_send_issue_reply_email.git && \
git clone https://github.com/berti92/mega_calendar.git && \
git clone https://github.com/momibun926/redmine_issue_evm.git && \
#git clone https://github.com/QBurst/qbmeetingroomplugin.git
chown -R redmine:redmine *

run git config --global url."https://".insteadOf "git://"

#CMD ["/bin/bash"]
