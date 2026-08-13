rg = {
  rg1 = {
    name     = "praveen"
    location = "Central India"
  }
   rg2 = {
    name     = "pk"
    location = "Central India"
  }
}

vn = {
  vn1 = {
    name                = "virtual_network"
    address_space       = ["10.0.0.0/16"]
    location            = "Central India"
    resource_group_name = "praveen"
  }
}

subnets = {
  subnet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "praveen"
    virtual_network_name = "virtual_network"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "backend-subnet"
    resource_group_name  = "praveen"
    virtual_network_name = "virtual_network"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

pips = {
  pip1 = {
    name                = "frontend_ip"
    resource_group_name = "praveen"
    location            = "Central India"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "backend_ip"
    resource_group_name = "praveen"
    location            = "Central India"
    allocation_method   = "Static"
  }
}

nics = {
  nic1 = {
    nic_name             = "frontend-nic"
    location             = "Central India"
    resource_group_name  = "praveen"
    subnet               = "frontend-subnet"
    virtual_network_name = "virtual_network"
    pip_name             = "frontend_ip"
    vm_name              = "frontend-vm"
    admin_username       = "praveensir"
    admin_password       = "praveensir@123"
  }
  nic2 = {
    nic_name             = "backend-nic"
    location             = "Central India"
    resource_group_name  = "praveen"
    subnet               = "backend-subnet"
    virtual_network_name = "virtual_network"
    pip_name             = "backend_ip"
    vm_name              = "backend-vm"
    admin_username       = "praveensir"
    admin_password       = "praveensir@123"
  }
}