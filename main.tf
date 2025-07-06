resource "azurerm_resource_group" "rg" {
  name     = "vineetrg"
  location = "east us"

}

resource "azurerm_virtual_network" "vineevnet01" {

  name                = "myvnet01"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]

  depends_on = [azurerm_resource_group.rg]

}
resource "azurerm_subnet" "subnet" {
  for_each = { for subnet in var.subnets : subnet.name => subnet }

  name                 = each.value.name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vineevnet01.name
  address_prefixes     = [each.value.address_prefixes]
  depends_on           = [azurerm_virtual_network.vineevnet01]
}
  