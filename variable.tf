variable "subscription_id" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}

variable "subnet_name" {
  type = string
}

variable "subnet_prefix" {
  type = list(string)
}

variable "nsg_name" {
  type = string
}

variable "nic_name" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "public_key_path" {
  type = string
}

variable "vm_count" {
  description = "Number of VMs"
  type        = number
  default     = 10
}

variable "nsg_rules" {
  type = map(number)

  default = {
    ssh   = 22
    http  = 80
    https = 443
  }
}

variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
}

variable "aks_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "aks_dns_prefix" {
  description = "DNS prefix for AKS"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  type        = string
  default     = null
}

variable "aks_node_count" {
  description = "Number of AKS worker nodes"
  type        = number
  default     = 2
}

variable "aks_vm_size" {
  description = "VM size for AKS worker nodes"
  type        = string
  default     = "Standard_D2s_v5"
}
