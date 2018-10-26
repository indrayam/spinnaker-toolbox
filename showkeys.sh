#!/usr/bin/env bash

SECRET_NAME=$1

# Output all the "keys" inside a secret
kubectl get secrets $SECRET_NAME -o json | jq '.data | keys_unsorted'


