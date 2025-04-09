module "Rssource_group_Infra" {
  source = "../../Module/Azure_Resource"
  RG_Infra = var.Mod_RG_Infra
}

# module "Azure_Web_App_infra" {
#   source = "../../Module/Azure_web_app"
#   azrerm_webapp_service = var.Mod_azrerm_webapp_service
# }