rgs = {
  rg1 = {
    name     = "claro-rg"
    location = "centralindia"
  }
}

vnets = {
  vnet1 = {
    name                = "claro-vnet"
    location            = "centraindia"
    resource_group_name = "claro-rg"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    name                 = "claro-subnet1"
    resource_group_name  = "claro-vnet"
    virtual_network_name = "claro-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

