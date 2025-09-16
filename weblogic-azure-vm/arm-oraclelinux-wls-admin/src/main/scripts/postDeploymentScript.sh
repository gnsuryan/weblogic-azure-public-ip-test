#!/bin/bash
# Copyright (c) 2021, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

#Function to output message to StdErr
function echo_stderr ()
{
    echo "$@" >&2
}

#Function to display usage message
function usage()
{
  echo_stderr "./postDeploymentScript.sh <<< \"<wlsDomainSetupArgsFromStdIn>\""
}


echo "Executing post Deployment script"
az account show
PUBLIC_IPS="$(az network public-ip list --resource-group ${RESOURCE_GROUP_NAME})"
echo "Got public ips"
echo $PUBLIC_IPS
echo "Script Ends"
