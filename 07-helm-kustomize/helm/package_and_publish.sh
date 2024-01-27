#!/bin/bash

helm package webapp

helm push $(ls -t webapp-*|head -n 1) oci://registry-1.docker.io/bogd

rm $(ls -t webapp-*|head -n 1)
