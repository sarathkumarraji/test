FROM centos:7
MAINTAINER devops mongo
EXPOSE 27017
COPY mongodb.repo /etc/yum.repos.d/
RUN yum -y install mongodb-org
RUN mkdir -p /data/db
CMD ["mongod"]
