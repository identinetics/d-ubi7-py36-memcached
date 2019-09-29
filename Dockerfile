FROM registry.access.redhat.com/ubi7/python-36
#FROM localhost/intra/ubi8-py36

USER root

RUN yum update -y \
 && yum -y install memcached libmemcached \
 && yum clean all && rm -rf /var/cache/yum
