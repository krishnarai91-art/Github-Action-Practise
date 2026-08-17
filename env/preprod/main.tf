module "resource_group" {
  source = "../../module/azurerm_resource_group"
  rgs    = var.rgs
}
module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../module/azurerm_virtual_network"
  vnets      = var.vnets
}
module "subnets" {
  depends_on = [module.virtual_network]
  source     = "../../module/azurerm_subnet"
  subnets    = var.subnets
}
