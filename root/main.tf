module "rg" {
  source              = "../resource_group"
  resource_group_name = "satya-rg"
    resource_group_location = "East US"
}

module "vnet" {
  source                  = "../virtual_network"
  virtual_network         = "satya-vnet"
  virtual_network_location = "East US"
  resource_group_name     = module.rg.resource_group_name
  address_space           = ["10.0.0.0/16"]
}

module "subnet" {
  source                = "../subnet"
  subnet_name           = "satya-subnet"
  resource_group_name   = module.rg.resource_group_name
  virtual_network_name  = module.vnet.virtual_network
  address_prefixes      = ["10.0.1.0/24"]
}

module "vm" {
  source                   = "../virtual_machine"
  nic_name                 = "satya-nic"
  location                 = module.rg.resource_group_location
  resource_group_name      = module.rg.resource_group_name
  resource_group_location  = module.rg.resource_group_location
  subnet_id                = module.subnet.subnet_id
  vm_name                  = "satya-vm"
  vm_size                  = "Standard_B1s"
  admin_username           = "satya"
  admin_password           = "satya@5656"  # bas test ke liye
}
