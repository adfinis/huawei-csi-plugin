# huawei-csi-plugin

A docker image containining the [Huawei CSI Plugin](https://github.com/Huawei/eSDK_K8S_Plugin)

## Why?

Huawei itself does not provide a docker image or a helm chart. Just the source code and some yaml files.

They do not publish an image because of a hash within the source code which is used to encrypt passwords. This may sound like a nice feature but is an overkill in our opinion. More informations on this are written in the [GitHub issue](https://github.com/Huawei/eSDK_K8S_Plugin/issues/9).

### Deployment with Helm

*INFO: Helm chart creation is stil in progress*

```shell
helm repo add adfinis https://charts.adfinis.com
helm install huawei-csi-plugin adfinis/huawei-csi-plugin
```
### Configuration

The huawei-csi-plugin is configured via environment variables inside the container and additional configmaps and secrets.

More informations will follow as soon as the helm chart is published.

## Build instructions

To build the docker images follow the steps written by [Huawei](https://github.com/Huawei/eSDK_K8S_Plugin)
