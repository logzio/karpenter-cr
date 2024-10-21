# karpenter-cr

Karpenter custom resources for Kubernetes.

## Prerequisites

- Kubernetes 1.28+
- Helm 3.9+

Below is the extended README.md, the full configuration table based on the provided `values.yaml` is in [VALUES.md](VALUES.md) file, release updates posted in the [CHANGELOG.md](CHANGELOG.md) file.


* * *

Karpenter Custom Resources for Kubernetes
==========================================

The `karpenter-cr` Helm chart deploys custom resources for Karpenter, including NodePool and EC2NodeClass, to manage the underlying EC2 infrastructure efficiently for a Kubernetes cluster.

Getting Started
---------------

### Add Karpenter Helm Repository

Before installing the chart, add the Karpenter Helm repository:

```shell
helm repo add karpenter logzio-chartmuseum/karpenter-cr
helm repo update

```

# karpenter-cr

Karpenter custom resources for Kubernetes.

## Prerequisites

- Kubernetes 1.28+
- Helm 3.9+

Below is the extended README.md, the full configuration table based on the provided `values.yaml` is in [VALUES.md](VALUES.md) file, release updates posted in the CHANGELOG.md file.

* * *

Karpenter Custom Resources for Kubernetes
==========================================

The `karpenter-cr` Helm chart deploys custom resources for Karpenter, including NodePool and EC2NodeClass, to manage the underlying EC2 infrastructure efficiently for a Kubernetes cluster.

Getting Started
---------------

### Add Karpenter Helm Repository

Before installing the chart, add the Karpenter Helm repository:

```shell
helm repo add karpenter https://karpenter.sh/charts
helm repo update
```

### Installation

1.  **Create the Karpenter Secret**
    
    If not managing secrets externally, create the Karpenter secret with your relevant information.
    
2.  **Install the Chart**
    
    Install `karpenter-cr` from the Karpenter Helm repository, specifying the necessary values:

    ```shell
    helm upgrade --install --namespace kube-system --create-namespace \
    --set "karpenter.serviceAccount.annotations.eks\.amazonaws\.com/role-arn=${KARPENTER_IAM_ROLE_ARN}" \
    --set karpenter.settings.clusterName=${CLUSTER_NAME} \
    --set karpenter.settings.interruptionQueue=${CLUSTER_NAME} \
    --set nodeInstanceGroups.AMISelectorTerms.ids=["ami-123"] \
    --set nodeInstanceGroups.SecurityGroupSelectorTerms.ids=["sg-aaaaaaaaaaaaaaaaa"] \
    --set nodeInstanceGroups.SubnetSelectorTerms.ids=["subnet-aaaaaaaaaaaaa"] \
    --set nodeInstanceGroups.Role="KarpenterNodeRole" \
    --wait \
    karpenter-cr logzio-chartmuseum/karpenter-cr 
    ```

### Uninstalling the Chart

To uninstall/delete the `karpenter-cr` deployment:

```shell
helm delete -n kube-system karpenter-cr
```

### Configure customization options

You can use the following options to update the Helm chart values [parameters](VALUES.md): 

* Specify parameters using the `--set key=value[,key=value]` argument to `helm install`

* Edit the `values.yaml`

* Overide default values with your own `my_values.yaml` and apply it in the `helm install` command. 