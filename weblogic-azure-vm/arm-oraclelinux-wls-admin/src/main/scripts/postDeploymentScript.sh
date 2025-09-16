echo "Executing post Deployment script"
az account show
PUBLIC_IPS="$(az network public-ip list --resource-group ${RESOURCE_GROUP_NAME})"
echo "Got public ips"
echo $PUBLIC_IPS
echo "Script Ends"
