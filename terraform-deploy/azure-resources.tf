
# resource "azurerm_resource_group" "example" {
#   name     = "rg-tfstate-bra-dev"
#   location = var.location
# }


# resource "azurerm_storage_account" "example" {
#   name                     = "stgbradevtfstate01"
#   resource_group_name      = azurerm_resource_group.example.name
#   location                 = azurerm_resource_group.example.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }


# resource "azurerm_storage_container" "example" {
#   name                  = "tfstate"
#   storage_account_name  = azurerm_storage_account.example.name
#   container_access_type = "private"

# }


# resource "azurerm_virtual_network" "example" {
#   name                = "vnet-github"
#   address_space       = ["172.30.0.0/16"]
#   location            = azurerm_resource_group.example.location
#   resource_group_name = var.resource_group_name
# }

# resource "azurerm_subnet" "example" {
#   name                 = "internal"
#   resource_group_name  = var.resource_group_name
#   virtual_network_name = azurerm_virtual_network.example.name
#   address_prefixes     = ["172.30.0.0/24"]
# }

# resource "azurerm_network_interface" "example" {
#   name                = "example-nic"
#   location            = data.azurerm_resource_group.example.location
#   resource_group_name = var.resource_group_name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.example.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }

# resource "tls_private_key" "example" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# resource "azurerm_linux_virtual_machine" "example" {
#   name                = "example-machine"
#   resource_group_name = var.resource_group_name
#   location            = data.azurerm_resource_group.example.location
#   size                = "Standard_F2"
#   admin_username      = "adminuser"
#   network_interface_ids = [
#     azurerm_network_interface.example.id,
#   ]

#   admin_ssh_key {
#     username   = "adminuser"
#     public_key = tls_private_key.example.public_key_openssh
#   }

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "UbuntuServer"
#     sku       = "18.04-LTS"
#     version   = "latest"
#   }
# }