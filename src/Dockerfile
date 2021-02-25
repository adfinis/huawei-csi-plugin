FROM centos:centos8.3.2011

LABEL org.opencontainers.image.authors="Adfinis AG <https://adfinis.com>"
LABEL org.opencontainers.image.vendor="Adfinis"

RUN yum install -y \ 
device-mapper-multipath \ 
iscsi-initiator-utils \ 
nvme-cli \
xfsprogs \ 
nfs-utils \ 
net-tools \ 
e2fsprogs 

ADD ["bin/huawei-csi", "/"] 
ADD ["bin/passwdEncrypt", "/"] 
RUN ["chmod", "+x", "/huawei-csi"] 
RUN ["chmod", "+x", "/passwdEncrypt"] 

ENTRYPOINT ["/huawei-csi"]
