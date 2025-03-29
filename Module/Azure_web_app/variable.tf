variable "azrerm_webapp_service" {
  type = map(object(
    {
      serviceplan = map(object(
        {

          sku_name = string
          os_type  = string
        }
      ))
      serviceapp = map(string)
    }
  ))
}
