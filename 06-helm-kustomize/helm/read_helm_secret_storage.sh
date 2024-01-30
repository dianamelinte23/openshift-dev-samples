#!/bin/bash

oc get secret sh.helm.release.v1.wordpress.v1 -o template='{{.data.release | base64decode | base64decode}}' | gunzip | jq | less