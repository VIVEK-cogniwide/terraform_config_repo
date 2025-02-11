## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_nat_gateway_a"></a> [nat\_gateway\_a](#module\_nat\_gateway\_a) | ../../terraform-Modules/network/nat_gateway | n/a |
| <a name="module_nat_gateway_b"></a> [nat\_gateway\_b](#module\_nat\_gateway\_b) | ../../terraform-Modules/network/nat_gateway | n/a |
| <a name="module_peering_a_to_b"></a> [peering\_a\_to\_b](#module\_peering\_a\_to\_b) | ../../terraform-Modules/network/peering | n/a |
| <a name="module_peering_b_to_a"></a> [peering\_b\_to\_a](#module\_peering\_b\_to\_a) | ../../terraform-Modules/network/peering | n/a |
| <a name="module_subnets_a"></a> [subnets\_a](#module\_subnets\_a) | ../../terraform-Modules/network/subnets | n/a |
| <a name="module_subnets_b"></a> [subnets\_b](#module\_subnets\_b) | ../../terraform-Modules/network/subnets | n/a |
| <a name="module_vnet_a"></a> [vnet\_a](#module\_vnet\_a) | ../../terraform-Modules/network/vnet | n/a |
| <a name="module_vnet_b"></a> [vnet\_b](#module\_vnet\_b) | ../../terraform-Modules/network/vnet | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_subnets_network_a"></a> [subnets\_network\_a](#input\_subnets\_network\_a) | Default variable for subnets belonging to Virtual Network A | <pre>map(object({<br/>    name                            = string<br/>    address_prefixes                = string<br/>    virtual_network_name            = string<br/>    default_outbound_access_enabled = bool<br/>    resource_group_name             = string<br/>  }))</pre> | <pre>{<br/>  "private_subnet_2": {<br/>    "address_prefixes": "10.5.1.0/24",<br/>    "default_outbound_access_enabled": false,<br/>    "name": "subnet-2",<br/>    "resource_group_name": "network-A-Group",<br/>    "virtual_network_name": "network-A"<br/>  },<br/>  "public_subnet_1": {<br/>    "address_prefixes": "10.5.0.0/24",<br/>    "default_outbound_access_enabled": true,<br/>    "name": "subnet-1",<br/>    "resource_group_name": "network-A-Group",<br/>    "virtual_network_name": "network-A"<br/>  }<br/>}</pre> | no |
| <a name="input_subnets_network_b"></a> [subnets\_network\_b](#input\_subnets\_network\_b) | Default variable for subnets belonging to Virtual Network B | <pre>map(object({<br/>    name                            = string<br/>    address_prefixes                = string<br/>    virtual_network_name            = string<br/>    default_outbound_access_enabled = bool<br/>    resource_group_name             = string<br/>  }))</pre> | <pre>{<br/>  "bastion_subnet": {<br/>    "address_prefixes": "10.6.2.0/24",<br/>    "default_outbound_access_enabled": true,<br/>    "name": "bastion_subnet",<br/>    "resource_group_name": "network-B-Group",<br/>    "virtual_network_name": "network-B"<br/>  },<br/>  "db_subnet": {<br/>    "address_prefixes": "10.6.1.0/24",<br/>    "default_outbound_access_enabled": false,<br/>    "name": "subnet-4",<br/>    "resource_group_name": "network-B-Group",<br/>    "service_endpoints": [<br/>      "Microsoft.Sql"<br/>    ],<br/>    "virtual_network_name": "network-B"<br/>  },<br/>  "private_subnet_3": {<br/>    "address_prefixes": "10.6.0.0/24",<br/>    "default_outbound_access_enabled": false,<br/>    "name": "subnet-3",<br/>    "resource_group_name": "network-B-Group",<br/>    "service_endpoints": [<br/>      "Microsoft.Storage"<br/>    ],<br/>    "virtual_network_name": "network-B"<br/>  }<br/>}</pre> | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Subscription Id of the Azure account | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | Tenant Id of the Azure account | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bastion_subnet"></a> [bastion\_subnet](#output\_bastion\_subnet) | Resource ID of Bastion subnet |
| <a name="output_gateway_1"></a> [gateway\_1](#output\_gateway\_1) | Resource ID of NAT gateway attached with private subnet\_2 |
| <a name="output_gateway_2"></a> [gateway\_2](#output\_gateway\_2) | Resource ID of NAT gateway attached with private\_subnet\_3 |
| <a name="output_network_a"></a> [network\_a](#output\_network\_a) | Virtual Network A Name |
| <a name="output_network_a_id"></a> [network\_a\_id](#output\_network\_a\_id) | Resource ID of Network A |
| <a name="output_network_b"></a> [network\_b](#output\_network\_b) | Virtual Network B Name |
| <a name="output_network_b_id"></a> [network\_b\_id](#output\_network\_b\_id) | Resource ID of Network B |
| <a name="output_subnet-1"></a> [subnet-1](#output\_subnet-1) | Resource ID of Public subnet\_1 |
| <a name="output_subnet-2"></a> [subnet-2](#output\_subnet-2) | Resource ID of Private subnet\_2 |
| <a name="output_subnet-3"></a> [subnet-3](#output\_subnet-3) | Resource ID of Private subnet\_3 |
| <a name="output_subnet-4"></a> [subnet-4](#output\_subnet-4) | Resource ID of Private subnet\_4 |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_db_mod"></a> [db\_mod](#module\_db\_mod) | ../../terraform-Modules/database | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_subnet.sub_4](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_administrator_login"></a> [administrator\_login](#input\_administrator\_login) | Username to access the Database | `string` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Subscription Id of the Azure account | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | Tenant Id of the Azure account | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_vault_id"></a> [key\_vault\_id](#output\_key\_vault\_id) | Resource ID of the Key Vault |
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>4.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_api_management_service"></a> [api\_management\_service](#module\_api\_management\_service) | ../../terraform-Modules/serverless/api_managment_service | n/a |
| <a name="module_azure-functions"></a> [azure-functions](#module\_azure-functions) | ../../terraform-Modules/serverless/azure_functions | n/a |
| <a name="module_azure-functions-delete"></a> [azure-functions-delete](#module\_azure-functions-delete) | ../../terraform-Modules/serverless/azure_functions | n/a |
| <a name="module_azure-functions-post"></a> [azure-functions-post](#module\_azure-functions-post) | ../../terraform-Modules/serverless/azure_functions | n/a |
| <a name="module_azure-functions-put"></a> [azure-functions-put](#module\_azure-functions-put) | ../../terraform-Modules/serverless/azure_functions | n/a |

## Resources

| Name | Type |
|------|------|
| [terraform_remote_state.remote_state](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_connection_string"></a> [db\_connection\_string](#input\_db\_connection\_string) | Database connection string | `string` | n/a | yes |
| <a name="input_publisher_email"></a> [publisher\_email](#input\_publisher\_email) | Publisher email of the API Managment Service | `string` | n/a | yes |
| <a name="input_publisher_name"></a> [publisher\_name](#input\_publisher\_name) | Publisher name of the API Managment Service | `string` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Subscription Id of the Azure account | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | Tenant Id of the Azure account | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_apigateway"></a> [apigateway](#output\_apigateway) | Gateway URL of API Managment Service |
| <a name="output_deleteapiflaskapp"></a> [deleteapiflaskapp](#output\_deleteapiflaskapp) | Default host name of Azure Function app |
| <a name="output_getapiflaskapp"></a> [getapiflaskapp](#output\_getapiflaskapp) | Default host name of Azure Function app |
| <a name="output_postapiflaskapp"></a> [postapiflaskapp](#output\_postapiflaskapp) | Default host name of Azure Function app |
| <a name="output_putapiflaskapp"></a> [putapiflaskapp](#output\_putapiflaskapp) | Default host name of Azure Function app |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | n/a |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_private_storage"></a> [private\_storage](#module\_private\_storage) | ../../terraform-Modules/storage/private_storage | n/a |
| <a name="module_public_storage"></a> [public\_storage](#module\_public\_storage) | ../../terraform-Modules/storage/public_storage | n/a |

## Resources

| Name | Type |
|------|------|
| [azuread_application.ad_policy](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/application) | data source |
| [azurerm_subnet.vnet_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_source_path"></a> [source\_path](#input\_source\_path) | Local path of the file to be uploades | `string` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Subscription Id of the Azure account | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | Tenant Id of the Azure account | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_storage"></a> [private\_storage](#output\_private\_storage) | URL of the Private storage blob |
| <a name="output_storage"></a> [storage](#output\_storage) | URL of the Public storage blob |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_space"></a> [address\_space](#input\_address\_space) | Cidr range for the Virtual Network | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Name of the region for this infreastructure | `string` | `"East US 2"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for this infrastructure | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_tag_value"></a> [tag\_value](#input\_tag\_value) | Tag value | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_virtual_network_id"></a> [virtual\_network\_id](#output\_virtual\_network\_id) | n/a |
| <a name="output_virtual_network_name"></a> [virtual\_network\_name](#output\_virtual\_network\_name) | n/a |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_subnet.subnets](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_prefixes"></a> [address\_prefixes](#input\_address\_prefixes) | n/a | `string` | n/a | yes |
| <a name="input_default_outbound_access_enabled"></a> [default\_outbound\_access\_enabled](#input\_default\_outbound\_access\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet-id"></a> [subnet-id](#output\_subnet-id) | n/a |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_network_peering.dev-to-test](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |
| [azurerm_virtual_network_peering.test-to-dev](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_forwarded_traffic"></a> [allow\_forwarded\_traffic](#input\_allow\_forwarded\_traffic) | Allow forwarded traffic between virtual networks. | `bool` | `true` | no |
| <a name="input_allow_gateway_transit"></a> [allow\_gateway\_transit](#input\_allow\_gateway\_transit) | Allow gateway transit for the virtual network peering. | `bool` | `false` | no |
| <a name="input_allow_virtual_network_access"></a> [allow\_virtual\_network\_access](#input\_allow\_virtual\_network\_access) | Allow access to the remote virtual network. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the virtual network peering. | `string` | n/a | yes |
| <a name="input_remote_virtual_network_id"></a> [remote\_virtual\_network\_id](#input\_remote\_virtual\_network\_id) | The ID of the remote virtual network to peer with. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group containing the virtual network. | `string` | n/a | yes |
| <a name="input_use_remote_gateways"></a> [use\_remote\_gateways](#input\_use\_remote\_gateways) | Whether or not the virtual network peering should use remote gateways. | `bool` | `false` | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | The name of the virtual network that will be peered. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_peer-1"></a> [peer-1](#output\_peer-1) | n/a |
| <a name="output_peer-2"></a> [peer-2](#output\_peer-2) | n/a |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_nat_gateway.gateway](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/nat_gateway) | resource |
| [azurerm_nat_gateway_public_ip_association.gateway_public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/nat_gateway_public_ip_association) | resource |
| [azurerm_public_ip.public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_subnet_nat_gateway_association.gateway_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_nat_gateway_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gateway"></a> [gateway](#output\_gateway) | n/a |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault.vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault) | resource |
| [azurerm_key_vault_key.key](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_key) | resource |
| [azurerm_key_vault_secret.secret](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |
| [azurerm_mssql_database.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_database) | resource |
| [azurerm_mssql_server.some_server](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server) | resource |
| [azurerm_private_endpoint.point](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |
| [random_password.db_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_administrator_login"></a> [administrator\_login](#input\_administrator\_login) | Username for SQL Database | `string` | n/a | yes |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | The name of the key to be created. The value will be randomly generated if blank. | `string` | `""` | no |
| <a name="input_key_ops"></a> [key\_ops](#input\_key\_ops) | The permitted JSON web key operations of the key to be created. | `list(string)` | <pre>[<br/>  "decrypt",<br/>  "encrypt",<br/>  "sign",<br/>  "unwrapKey",<br/>  "verify",<br/>  "wrapKey"<br/>]</pre> | no |
| <a name="input_key_permissions"></a> [key\_permissions](#input\_key\_permissions) | List of key permissions. | `list(string)` | <pre>[<br/>  "List",<br/>  "Create",<br/>  "Delete",<br/>  "Get",<br/>  "Purge",<br/>  "Recover",<br/>  "Update",<br/>  "GetRotationPolicy",<br/>  "SetRotationPolicy"<br/>]</pre> | no |
| <a name="input_key_size"></a> [key\_size](#input\_key\_size) | The size in bits of the key to be created. | `number` | `2048` | no |
| <a name="input_key_type"></a> [key\_type](#input\_key\_type) | The JsonWebKeyType of the key to be created. | `string` | `"RSA"` | no |
| <a name="input_location"></a> [location](#input\_location) | Location/Region where the Database server is created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name given for the SQL Database | `string` | n/a | yes |
| <a name="input_object_id"></a> [object\_id](#input\_object\_id) | Client ID for App or Role registrations | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_secret_permissions"></a> [secret\_permissions](#input\_secret\_permissions) | List of secret permissions. | `list(string)` | <pre>[<br/>  "Set",<br/>  "Get",<br/>  "Delete",<br/>  "Purge",<br/>  "Recover"<br/>]</pre> | no |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | The SKU of the vault to be created. | `string` | `"standard"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Resource ID of the subnet | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | Tenant ID of the Azure subscription | `string` | n/a | yes |
| <a name="input_vault_name"></a> [vault\_name](#input\_vault\_name) | The name of the key vault to be created. The value will be randomly generated if blank. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azurerm_key_vault_id"></a> [azurerm\_key\_vault\_id](#output\_azurerm\_key\_vault\_id) | Resource ID of Azure Key Vault |
| <a name="output_azurerm_key_vault_name"></a> [azurerm\_key\_vault\_name](#output\_azurerm\_key\_vault\_name) | Azure Key Vault name |
| <a name="output_server"></a> [server](#output\_server) | Domain name of SQL Server |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_null"></a> [null](#provider\_null) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault_secret.secret](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |
| [azurerm_network_interface.nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_interface_security_group_association.nsg_nic_association](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_security_group_association) | resource |
| [azurerm_network_security_group.nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_public_ip.pub_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_virtual_machine.vm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine) | resource |
| [null_resource.curl_command_execution_resource](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.ssh_key_transfer_resource](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [random_password.db_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [tls_private_key.example_ssh](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_username"></a> [admin\_username](#input\_admin\_username) | Admin username for the VM | `string` | n/a | yes |
| <a name="input_allocate_public_ip"></a> [allocate\_public\_ip](#input\_allocate\_public\_ip) | Controls the association of Public IP Addresses to the VM | `bool` | n/a | yes |
| <a name="input_client_ip"></a> [client\_ip](#input\_client\_ip) | n/a | `string` | `""` | no |
| <a name="input_command_execution"></a> [command\_execution](#input\_command\_execution) | n/a | `list(string)` | <pre>[<br/>  "pwd"<br/>]</pre> | no |
| <a name="input_connect_vm_key"></a> [connect\_vm\_key](#input\_connect\_vm\_key) | n/a | `string` | `""` | no |
| <a name="input_curl_command_execution"></a> [curl\_command\_execution](#input\_curl\_command\_execution) | n/a | `bool` | `false` | no |
| <a name="input_custom_data_execution"></a> [custom\_data\_execution](#input\_custom\_data\_execution) | n/a | `bool` | `false` | no |
| <a name="input_key_permissions"></a> [key\_permissions](#input\_key\_permissions) | List of key permissions. | `list(string)` | <pre>[<br/>  "List",<br/>  "Create",<br/>  "Delete",<br/>  "Get",<br/>  "Purge",<br/>  "Recover",<br/>  "Update",<br/>  "GetRotationPolicy",<br/>  "SetRotationPolicy"<br/>]</pre> | no |
| <a name="input_key_vault_id"></a> [key\_vault\_id](#input\_key\_vault\_id) | Resource ID of the Key Vault | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location/region where the VM will be created | `string` | n/a | yes |
| <a name="input_nginx_commands"></a> [nginx\_commands](#input\_nginx\_commands) | Executes the given inline commands | `list(string)` | <pre>[<br/>  "pwd"<br/>]</pre> | no |
| <a name="input_nginx_provisioning"></a> [nginx\_provisioning](#input\_nginx\_provisioning) | Controls the execution of Nginx inline commands | `bool` | `false` | no |
| <a name="input_path_file"></a> [path\_file](#input\_path\_file) | n/a | `string` | `"C:/Users/Vivek Senthilkumar/OneDrive - cogniwide.com/terraform_cloud_practicals/IAC/terraform/terraform-Infra/compute/virtual_machines/bash.sh"` | no |
| <a name="input_public_ip"></a> [public\_ip](#input\_public\_ip) | n/a | `string` | `""` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_secret_permissions"></a> [secret\_permissions](#input\_secret\_permissions) | List of secret permissions. | `list(string)` | <pre>[<br/>  "Set",<br/>  "Get",<br/>  "Delete",<br/>  "Purge",<br/>  "Recover"<br/>]</pre> | no |
| <a name="input_source_1"></a> [source\_1](#input\_source\_1) | n/a | `string` | `""` | no |
| <a name="input_source_2"></a> [source\_2](#input\_source\_2) | n/a | `string` | `""` | no |
| <a name="input_source_3"></a> [source\_3](#input\_source\_3) | n/a | `string` | `""` | no |
| <a name="input_ssh_key_transfer"></a> [ssh\_key\_transfer](#input\_ssh\_key\_transfer) | n/a | `list(string)` | <pre>[<br/>  "pwd"<br/>]</pre> | no |
| <a name="input_ssh_key_transfer_provisioner"></a> [ssh\_key\_transfer\_provisioner](#input\_ssh\_key\_transfer\_provisioner) | transfers ssh keys to bastion-vm | `bool` | `false` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The Resource ID of the subnet to which the VM will be connected | `string` | n/a | yes |
| <a name="input_tag_value"></a> [tag\_value](#input\_tag\_value) | Tag value | `string` | n/a | yes |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | The name of the Virtual Machine | `string` | n/a | yes |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | The size of the Virtual Machine | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key"></a> [key](#output\_key) | SSH Private key of the Virtual Machine |
| <a name="output_private_ip"></a> [private\_ip](#output\_private\_ip) | Private IP Address of the Virtual Machine |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | Public IP Address of the Virtual Machine |
| <a name="output_vm_id"></a> [vm\_id](#output\_vm\_id) | The Resource ID of the Virtual Machine |
| <a name="output_vm_name"></a> [vm\_name](#output\_vm\_name) | Name of the Virtual Machine |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_lb.loadbalancer](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb) | resource |
| [azurerm_lb_backend_address_pool.backend](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_backend_address_pool) | resource |
| [azurerm_lb_nat_rule.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_nat_rule) | resource |
| [azurerm_lb_outbound_rule.outbound_rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_outbound_rule) | resource |
| [azurerm_lb_probe.health_probe](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_probe) | resource |
| [azurerm_lb_rule.rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_rule) | resource |
| [azurerm_network_interface_backend_address_pool_association.backend-association](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_backend_address_pool_association) | resource |
| [azurerm_public_ip.PublicIPAddress](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backend_port"></a> [backend\_port](#input\_backend\_port) | Back\_end port | `string` | n/a | yes |
| <a name="input_frontend_port"></a> [frontend\_port](#input\_frontend\_port) | Front\_end port | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Location/Region where the Load balancer is deployed | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name to be given for the Load balancer | `string` | n/a | yes |
| <a name="input_network_interface_ids"></a> [network\_interface\_ids](#input\_network\_interface\_ids) | List of NIC's | `list(string)` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_tag_value"></a> [tag\_value](#input\_tag\_value) | Tag value | `string` | n/a | yes |
| <a name="input_virtual_network_id"></a> [virtual\_network\_id](#input\_virtual\_network\_id) | value | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lb_id"></a> [lb\_id](#output\_lb\_id) | Resource ID of Load balancer |
| <a name="output_public_ip_address"></a> [public\_ip\_address](#output\_public\_ip\_address) | Public IP Address allocated for the Load balancer |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_function_app.primary](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_function_app) | resource |
| [azurerm_service_plan.plan](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan) | resource |
| [azurerm_storage_account.account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_user_assigned_identity.functions](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_connection_string"></a> [db\_connection\_string](#input\_db\_connection\_string) | n/a | `string` | n/a | yes |
| <a name="input_function_app_name"></a> [function\_app\_name](#input\_function\_app\_name) | Name of Function app | `string` | n/a | yes |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | Name of Function or Trigger | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Location/Region where the resource should be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name given for the Function app | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_service_plan_name"></a> [service\_plan\_name](#input\_service\_plan\_name) | Name of Service plan | `string` | n/a | yes |
| <a name="input_tag_value"></a> [tag\_value](#input\_tag\_value) | Tag value | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_host"></a> [host](#output\_host) | Default host name of the Azure function app |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_api_management.api_gateway](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/api_management) | resource |
| [azurerm_api_management_api.managment_api](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/api_management_api) | resource |
| [azurerm_api_management_api_operation.operations](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/api_management_api_operation) | resource |
| [azurerm_api_management_api_operation_policy.policies](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/api_management_api_operation_policy) | resource |
| [azurerm_api_management_backend.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/api_management_backend) | resource |
| [azurerm_api_management_backend.example1](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/api_management_backend) | resource |
| [azurerm_api_management_backend.example2](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/api_management_backend) | resource |
| [azurerm_api_management_backend.example3](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/api_management_backend) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | The Location/Region where the resource should be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the Resource | `string` | n/a | yes |
| <a name="input_publisher_email"></a> [publisher\_email](#input\_publisher\_email) | Email of the Publisher | `string` | n/a | yes |
| <a name="input_publisher_name"></a> [publisher\_name](#input\_publisher\_name) | Name of the Publisher | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_tag_value"></a> [tag\_value](#input\_tag\_value) | Tag value | `string` | n/a | yes |
| <a name="input_url"></a> [url](#input\_url) | Default host name of the Azure Function app | `string` | n/a | yes |
| <a name="input_url_1"></a> [url\_1](#input\_url\_1) | Default host name of the Azure Function app | `string` | n/a | yes |
| <a name="input_url_2"></a> [url\_2](#input\_url\_2) | Default host name of the Azure Function app | `string` | n/a | yes |
| <a name="input_url_3"></a> [url\_3](#input\_url\_3) | Default host name of the Azure Function app | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_apiservice"></a> [apiservice](#output\_apiservice) | Gateway URL of API Managment Service |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_private_dns_zone.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone_virtual_network_link.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_endpoint.pri_endpoint](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |
| [azurerm_role_assignment.name](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_storage_account.account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_blob.blob](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_blob) | resource |
| [azurerm_storage_container.container](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | Storage account replication type - i.e. LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS. | `string` | n/a | yes |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | Defines the Tier to use for this storage account (Standard or Premium). | `string` | n/a | yes |
| <a name="input_azuread_application"></a> [azuread\_application](#input\_azuread\_application) | Manages an application registration within Azure Active Directory. | `string` | n/a | yes |
| <a name="input_container_access_type"></a> [container\_access\_type](#input\_container\_access\_type) | Defines the access type -- i.e 'private','blob' or 'container' | `string` | n/a | yes |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | Name of Storage container | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Location/Region where the resource should be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the Resource | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_source_content"></a> [source\_content](#input\_source\_content) | Content type of the file | `string` | n/a | yes |
| <a name="input_source_path"></a> [source\_path](#input\_source\_path) | Local path of file | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Resource ID of the subnet | `string` | n/a | yes |
| <a name="input_tag_value"></a> [tag\_value](#input\_tag\_value) | Tag value | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | Defines type of storage i.e 'block','file','table' or 'queue' | `string` | n/a | yes |
| <a name="input_virtual_network_id"></a> [virtual\_network\_id](#input\_virtual\_network\_id) | Resource ID of the Virtual Network | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_blob"></a> [blob](#output\_blob) | Resource ID of the Private blob |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_storage_account.account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_blob.blob](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_blob) | resource |
| [azurerm_storage_container.container](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | Storage account replication type - i.e. LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS. | `string` | n/a | yes |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | Defines the Tier to use for this storage account (Standard or Premium). | `string` | n/a | yes |
| <a name="input_container_access_type"></a> [container\_access\_type](#input\_container\_access\_type) | n/a | `string` | n/a | yes |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | Name of Storage container | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Location/Region where the resource should be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the Resource | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_source_path"></a> [source\_path](#input\_source\_path) | Local path of file | `string` | n/a | yes |
| <a name="input_tag_value"></a> [tag\_value](#input\_tag\_value) | Tag value | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | Defines type of storage i.e 'block','file','table' or 'queue' | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_blob"></a> [blob](#output\_blob) | Resource ID of public storage blob |
