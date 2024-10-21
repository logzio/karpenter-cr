### Configuration

The table below lists the configurable parameters of the `karpenter` chart and their default values.

| Key                                      | Description                                                                      | Default Value                          |
|------------------------------------------|----------------------------------------------------------------------------------|----------------------------------------|
| global.apiVersion.EC2NodeClass           | API version for EC2NodeClass custom resource.                                    | `karpenter.k8s.aws/v1`                 |
| global.apiVersion.NodePool               | API version for NodePool custom resource.                                        | `karpenter.sh/v1`                      |
| karpenter-crd.webhook.enabled            | Enable the webhook for karpenter-crd.                                            | `true`                                 |
| karpenter.enabled                        | Enable the karpenter chart.                                                      | `true`                                 |
| karpenter.serviceAccount.name            | Name of the service account for karpenter.                                       | `karpenter`                            |
| karpenter.serviceAccount.annotations     | Annotations for the service account.                                             | `eks.amazonaws.com/role-arn: "arn:aws:iam::112233445566:role/karpenter-irsa"` |
| karpenter.controller                     | Controller configuration.                                                        | `{}`                                   |
| karpenter.settings.batchMaxDuration      | Maximum batch duration for karpenter.                                            | `10s`                                  |
| karpenter.settings.batchIdleDuration     | Idle batch duration for karpenter.                                               | `1s`                                   |
| karpenter.settings.clusterName           | Name of the cluster.                                                             | `""`                                   |
| karpenter.settings.clusterEndpoint       | Endpoint of the cluster.                                                         | `""`                                   |
| karpenter.settings.interruptionQueue     | Interruption queue for karpenter.                                                | `""`                                   |

