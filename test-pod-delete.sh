#!/bin/bash

#This script would run on your current context. This is to delete one pod at a time, wait time will be 10 seconds.

# Would need to install jsawk to get it working. Parse json in the shell with jsawk.
kubectl get -o json pod -n cart | jsawk 'return this.status.podIP'

# Use of a Variable
kubectl delete pod ${cartpod} -n cart

# Array Variable
var=( $(kubectl get pods -n cart | grep cartsvc ) )

# You can then access elements of your array using the form ${var[n]}, with n starting at zero.
${var[n]}

#pause script for 10 seconds
sleep 10

