FROM centos:7

ARG confluent_platform_version=2.11

MAINTAINER Mayur

RUN yum clean all
RUN yum -y install java-1.8.0-openjdk-devel
ADD confluent.repo /etc/yum.repos.d/
RUN rpm --import http://packages.confluent.io/rpm/3.3/archive.key
RUN yum clean all
RUN yum -y install confluent-platform-oss-2.11

