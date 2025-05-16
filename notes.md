az ad sp create-for-rbac --name spn-azure-bicep-github --role contributor --scopes /subscriptions/<SUBSCRIPTION_ID> --sdk-auth
---------
output:
---------
{
  "clientId": "227271a6-xxx",
  "clientSecret": "Aw8l8Rxxx",
  "subscriptionId": "17b12858-xxx",
  "tenantId": "558506eb-xxx",
  "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
  "resourceManagerEndpointUrl": "https://management.azure.com/",
  "activeDirectoryGraphResourceId": "https://graph.windows.net/",
  "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
  "galleryEndpointUrl": "https://gallery.azure.com/",
  "managementEndpointUrl": "https://management.core.windows.net/"
}

## Steps in Automating Bicep files deployment uisng GH-actions

* specify name
* on -> pull request to the main branch
* workflow_dispatch optional
* env
  * Resource Group
  * Location
* Jobs -> Preview and Deploy
  * runs on -> ubuntu-lastest
* Steps
  * uses: checkouts the repository
  * name: login into azure with the below action
  * uses: Azure/Login
  * with: your creds added in secrets
  * name: create resource group
  * uses: Azure/cli
  * with: 

