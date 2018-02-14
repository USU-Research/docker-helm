# docker-helm

Image for k8s deployments on gcloud.
We have 
- gcloud sdk
- kubectl
- helm
already in the the great [devth/helm-docker](https://github.com/devth/helm-docker) image.

We added
- [jq](https://stedolan.github.io/jq/) for parsing json
- "Europe/Berlin" Timezone 
- zip 
- gnupg for en- and decrypting files
