FROM centos:centos6

MAINTAINER jripault

RUN yum -y install wget && \
    wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u80-b15/jre-7u80-linux-x64.rpm && \
    echo "8ac14c3a8c340189986fba2fe6ed5faf  jre-7u80-linux-x64.rpm" >> MD5SUM && \
	md5sum jre-7u80-linux-x64.rpm && \
    md5sum -c MD5SUM && \
    rpm -Uvh jre-7u80-linux-x64.rpm && \
    yum -y remove wget && \
    rm -f jre-7u80-linux-x64.rpm MD5SUM
