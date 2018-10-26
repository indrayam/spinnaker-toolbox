# Spinnaker Toolbox

Simple tools to work with Spinnaker running in Kubernetes

1. Besides the two useful shell scripts, `showkeys.sh` and `showvalue.sh`, the following commands can come in handy as well

```bash
# Get secrets sorted by creation date
kubectl get secrets -o wide --sort-by=.metadata.creationTimestamp

# List all entries inside a secret
k8sec list spin-clouddriver-rw-files-216714999 | awk -F' ' '{$1=$2=$3=""; printf "%s\n\n\n", $0}' | awk '{gsub(/\\n/,"\n")}1'

```
