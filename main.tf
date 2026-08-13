module "resource_group" {
  source = "../../module/resource_group"
  rg     = var.rg
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../module/virtual_network"
  vn         = var.vn
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../../module/subnet"
  subnets    = var.subnets
}

module "public_ip" {
  depends_on = [module.subnet]
  source     = "../../module/public_ip"
  pips       = var.pips
}

module "virtual_machine" {
  depends_on = [module.public_ip]
  source     = "../../module/virtual_machine"
  nics       = var.nics


}