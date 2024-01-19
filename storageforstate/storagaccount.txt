#!/bin/bash
$RESOURCE_GROUP_NAME=tfstate
$STORAGE_ACCOUNT_NAME=tfstate$RANDOM
$CONTAINER_NAME=tfstate
# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location norwayeast