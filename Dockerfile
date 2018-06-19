FROM jboss/base-jdk:8
MAINTAINER "Ning Yu <mynameisny@126.com>"


RUN mkdir -p /opt/jboss/data

ADD app/ /opt/jboss/

ENTRYPOINT ["/opt/jboss/run.sh"]
