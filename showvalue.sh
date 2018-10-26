#!/usr/bin/env bash

SECRET_NAME=$1
KEY_NAME=$2
PRUNED_KEY_NAME=$(echo $KEY_NAME | sed 's/\./\\./g')
echo $PRUNED_KEY_NAME
kubectl get secret $SECRET_NAME -o jsonpath="{.data.$PRUNED_KEY_NAME}" | base64 -d | bat



