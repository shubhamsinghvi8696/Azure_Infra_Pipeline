resource "azurerm_service_plan" "service_app" {
for_each =  var.azrerm_webapp_service
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  sku_name            = each.value.sku_name
  os_type             = each.value.os_type
}

resource "azurerm_windows_web_app" "example" {
 for_each =  var.azrerm_webapp_service
  name                = each.value.webapp_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  service_plan_id     = azurerm_service_plan.service_app[each.value].id

  site_config {}
}
