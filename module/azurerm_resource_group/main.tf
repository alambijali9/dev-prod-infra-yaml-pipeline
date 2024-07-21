resource "azurerm_resource_group" "rg-dev" {
  for_each = var.devrg
  name     = each.value.name
  location = each.value.location
}