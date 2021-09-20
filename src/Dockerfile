FROM centos:centos8.4.2105

LABEL org.opencontainers.image.authors="Adfinis AG <https://adfinis.com>"
LABEL org.opencontainers.image.vendor="Adfinis"

ENV HUAWEI_ESDK_K8S_PLUGIN_VERSION=V2.2.13

RUN yum install -y \
    device-mapper-multipath \
    iscsi-initiator-utils \
    nvme-cli \
    xfsprogs \
    nfs-utils \
    net-tools \
    e2fsprogs \
    unzip \
  && dnf clean all \
  && rm -rf /var/cache/yum

RUN curl --location https://github.com/Huawei/eSDK_K8S_Plugin/releases/download/${HUAWEI_ESDK_K8S_PLUGIN_VERSION}/eSDK_Enterprise_Storage_Kubernetes_CSI_Plugin_${HUAWEI_ESDK_K8S_PLUGIN_VERSION}_X86_64.zip -o /tmp/Huawei_eSDK.zip && \
  unzip /tmp/Huawei_eSDK.zip '*/bin/*' && \
  mv eSDK_Enterprise_Storage_Kubernetes_CSI_Plugin_${HUAWEI_ESDK_K8S_PLUGIN_VERSION}_X86_64/bin/* / && \
  chmod +x /huawei-csi /secretGenerate /secretUpdate && \
  rmdir --parents eSDK_Enterprise_Storage_Kubernetes_CSI_Plugin_${HUAWEI_ESDK_K8S_PLUGIN_VERSION}_X86_64/bin && \
  rm /tmp/Huawei_eSDK.zip

ENTRYPOINT ["/huawei-csi"]
