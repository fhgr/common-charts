# Deployment example using Kustomize

### Prerequisites

Makre sure the Helm repository is installed as follows:

```console
helm repo add fhgr https://fhgr.github.io/common-charts
helm repo update
```

### Deployment

In order to deploy the manifest for this example, issue the
following command:

```console
helm install vaultwarden fhgr/app-template --namespace default --values values.yaml
```

This will apply the rendered manifest(s) to your cluster.
