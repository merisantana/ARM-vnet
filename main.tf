{
    "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
    "contentVersion": "1.0.0.0",
    "parameters": {
        "virtualNetworkName": {
            "type": "string",
            "minLength": 1,
            "metadata": {
                "description": "Name of the virtual network."
            }
        },
        "addressPrefix": {
            "type": "string",
            "defaultValue": "10.0.0.0/16",
            "metadata": {
                "description": "The IP address prefix for the virtual network."
            }
        }
    },
    "variables": {},
    "resources": [
        {
            "type": "Microsoft.Network/virtualNetworks",
            "name": "[parameters('virtualNetworkName')]",
            "apiVersion": "2018-08-01",
            "location": "[resourceGroup().location]",
            "properties": {
                "addressSpace": {
                    "addressPrefixes": [
                        "[parameters('addressPrefix')]"
                    ]
                },
                "subnets": []
            }
        }
    ],
    "outputs": {}
}
