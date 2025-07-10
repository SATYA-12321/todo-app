
variable "nic_name" {
  description = "Network Interface ka naam"
  type        = string
}


variable "resource_group_name" {
  description = "Resource group jisme sab resources banenge"
  type        = string
}

variable "location" {
  description = "Azure region (jaise East US)"
  type        = string
}


variable "resource_group_location" {
  description = "Azure region for RG (optional agar location use ho raha ho to)"
  type        = string
}


variable "subnet_id" {
  description = "Subnet ka ID jahan NIC attach hoga"
  type        = string
}


variable "vm_name" {
  description = "Linux VM ka naam"
  type        = string
}


variable "vm_size" {
  description = "Linux VM ka size (SKU)"
  type        = string
}

variable "admin_username" {
  type        = string
}
    
variable "admin_password" {
  type        = string
}
