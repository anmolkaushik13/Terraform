resource "azurerm_resource_group" "a_k" {
  name     = "asGroup"
  location = "West Europe"
}

# resource "azurerm_network_security_group" "az_nsg" {
#   name                = "security-group"
#   location            = azurerm_resource_group.a_k.location
#   resource_group_name = azurerm_resource_group.a_k.name
# }

# resource "azurerm_virtual_network" "az_vn" {
#   name                = "v_network"
#   location            = azurerm_resource_group.a_k.location
#   resource_group_name = azurerm_resource_group.a_k.name
#   address_space       = ["10.0.0.0/16"]
#   dns_servers         = ["10.0.0.4", "10.0.0.5"]

#   subnet {
#     name             = "subnet1"
#     address_prefixes = ["10.0.1.0/24"]
#   }

#   subnet {
#     name             = "subnet2"
#     address_prefixes = ["10.0.2.0/24"]
#     security_group   = azurerm_network_security_group.az_nsg.id
#   }
# }