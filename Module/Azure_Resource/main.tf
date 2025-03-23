resource "azurerm_resource_group" "resource_Practice" {
  for_each   = var.RG_Infra
  name       = each.value.name
  location   = each.value.location
  tags       = each.value.tags
  managed_by = each.value.managed_by
}
  