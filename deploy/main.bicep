@description('Name of the virtual network')
param vnetName string = 'myVnet'

@description('Location for the virtual network')
param location string = resourceGroup().location

@description('Address space for the virtual network')
param addressSpace string = '10.0.0.0/16'

@description('Name of the subnet')
param subnetName string = 'mySubnet'

@description('Address prefix for the subnet')
param subnetPrefix string = '10.0.1.0/24'

// @description('The deployment environment type')
// param environmentType string = 'dev'

resource vnet 'Microsoft.Network/virtualNetworks@2023-02-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        addressSpace
      ]
    }
    subnets: [
      {
        name: subnetName
        properties: {
          addressPrefix: subnetPrefix
        }
      }
    ]
  }
}
