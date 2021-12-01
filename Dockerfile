FROM busybox:1.34.1-glibc

LABEL org.opencontainers.image.authors="Adfinis AG <https://adfinis.com>"
LABEL org.opencontainers.image.vendor="Adfinis"

ENV HUAWEI_ESDK_K8S_PLUGIN_VERSION=V2.2.14

RUN wget https://github.com/Huawei/eSDK_K8S_Plugin/releases/download/${HUAWEI_ESDK_K8S_PLUGIN_VERSION}/eSDK_Enterprise_Storage_Kubernetes_CSI_Plugin_${HUAWEI_ESDK_K8S_PLUGIN_VERSION}_X86_64.zip -O /tmp/Huawei_eSDK.zip && \
  unzip -jd / /tmp/Huawei_eSDK.zip '*/bin/huawei-csi' && \
  chmod +x /huawei-csi && \
  rm /tmp/Huawei_eSDK.zip

USER 65534

ENTRYPOINT ["/huawei-csi"]
