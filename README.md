# huawei-csi-plugin

A docker image containining the [Huawei CSI Plugin](https://github.com/Huawei/eSDK_K8S_Plugin)

## Why?

Huawei itself does not provide a container image or a helm chart. Just the source code and some yaml files.

Starting with the release of V2.2.13 Huawei provides the `huawei-csi` binary as part of their release on GitHub and we're using this binary to construct the container image.

### Deployment with Helm

:warning: This Helm chart is a proof of concept and we're trying to convince Huawei to provide an official one!

```shell
helm repo add adfinis https://charts.adfinis.com
helm install huawei-csi-plugin adfinis/huawei-csi-plugin
```

### Configuration

The huawei-csi-plugin is configured via environment variables inside the container and additional configmaps and secrets.

More informations will follow as soon as the helm chart is published.

## Build instructions

```shell
git clone https://github.com/adfinis-sygroup/huawei-csi-plugin
cd huawei-csi-plugin
docker build .
```
