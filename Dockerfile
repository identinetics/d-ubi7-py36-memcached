FROM registry.access.redhat.com/ubi7/python-36
#FROM localhost/intra/ubi8-py36

USER root

RUN dnf update -y \
 && dnf -y install memcached \
 && dnf clean all && rm -rf /var/cache/yum