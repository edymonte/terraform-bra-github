# data "azurerm_resource_group" "example" {
#   name = var.resource_group_name
# }

resource "azurerm_resource_group" "rg_github" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    environment = "develop"
  }
}

resource "azurerm_virtual_network" "vnet_github" {
  name                = "vnet-github"
  address_space       = ["172.30.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name
}

# resource "azurerm_subnet" "example" {
#   name                 = "internal"
#   resource_group_name  = data.azurerm_resource_group.example.name
#   virtual_network_name = azurerm_virtual_network.example.name
#   address_prefixes     = ["10.0.2.0/24"]
# }

# resource "azurerm_network_interface" "example" {
#   name                = "example-nic"
#   location            = data.azurerm_resource_group.example.location
#   resource_group_name = data.azurerm_resource_group.example.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.example.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }

# resource "tls_private_key" "main" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# resource "azurerm_linux_virtual_machine" "example" {
#   name                = "example-machine"
#   resource_group_name = data.azurerm_resource_group.example.name
#   location            = data.azurerm_resource_group.example.location
#   size                = "Standard_F2"
#   admin_username      = "adminuser"
#   network_interface_ids = [
#     azurerm_network_interface.example.id,
#   ]

#   admin_ssh_key {
#     username   = "adminuser"
#     public_key = tls_private_key.main.public_key_openssh
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