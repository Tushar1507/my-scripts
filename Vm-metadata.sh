#!/bin/bash

vmName="my_vm"
resourceGroup="my_rg"

#### for complete Vm information ###########
az vm show --name $vmName --resource-group $resourceGroup

##### for some specific key value ##########
az vm show --name $vmName \
  --resource-group $resourceGroup \
  --query 'networkProfile.networkInterfaces[].id' \
  --output tsv

#### the above command will query the network interfaces id associated with Vm ###
#### we can fetch any specific value similar to the above network interface ids, by using <Top level JSON key>.<subkey>
 

