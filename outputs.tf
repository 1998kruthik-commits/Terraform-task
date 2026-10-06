# Resource Group Outputs


output "resource_group_name" {
  description = "Name of the Azure Resource Group"
  value       = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  description = "Location of the Azure Resource Group"
  value       = azurerm_resource_group.rg.location
}



# Virtual Network Outputs


output "vnet_name" {
  description = "Name of the Virtual Network"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_id" {
  description = "ID of the Virtual Network"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_address_space" {
  description = "Address space of the Virtual Network"
  value       = azurerm_virtual_network.vnet.address_space
}



# Subnet Outputs


output "subnet_name" {
  description = "Name of the Subnet"
  value       = azurerm_subnet.subnet.name
}

output "subnet_id" {
  description = "ID of the Subnet"
  value       = azurerm_subnet.subnet.id
}

output "subnet_address_prefixes" {
  description = "Address prefixes of the Subnet"
  value       = azurerm_subnet.subnet.address_prefixes
}



# Network Security Group Outputs


output "nsg_name" {
  description = "Name of the Network Security Group"
  value       = azurerm_network_security_group.nsg.name
}

output "nsg_id" {
  description = "ID of the Network Security Group"
  value       = azurerm_network_security_group.nsg.id
}


# Public IP Outputs


output "public_ip_addresses" {
  description = "Public IP addresses assigned to the VMs"
  value       = azurerm_public_ip.pip[*].ip_address
}

output "public_ip_ids" {
  description = "IDs of the VM Public IP resources"
  value       = azurerm_public_ip.pip[*].id
}



# Network Interface Outputs


output "network_interface_names" {
  description = "Names of the VM Network Interfaces"
  value       = azurerm_network_interface.nic[*].name
}

output "network_interface_ids" {
  description = "IDs of the VM Network Interfaces"
  value       = azurerm_network_interface.nic[*].id
}



# Virtual Machine Outputs
# 

output "vm_names" {
  description = "Names of the Linux Virtual Machines"
  value       = azurerm_linux_virtual_machine.vm[*].name
}

output "vm_ids" {
  description = "IDs of the Linux Virtual Machines"
  value       = azurerm_linux_virtual_machine.vm[*].id
}

output "vm_private_ip_addresses" {
  description = "Private IP addresses of the Linux Virtual Machines"
  value       = azurerm_network_interface.nic[*].private_ip_address
}

output "vm_size" {
  description = "VM size used by the Linux Virtual Machines"
  value       = var.vm_size
}


# Storage Account Outputs

output "storage_account_name" {
  description = "Name of the Azure Storage Account"
  value       = azurerm_storage_account.storage.name
}

output "storage_account_id" {
  description = "ID of the Azure Storage Account"
  value       = azurerm_storage_account.storage.id
}

output "storage_account_primary_endpoint" {
  description = "Primary Blob endpoint of the Storage Account"
  value       = azurerm_storage_account.storage.primary_blob_endpoint
}

output "storage_account_primary_location" {
  description = "Primary location of the Storage Account"
  value       = azurerm_storage_account.storage.primary_location
}




output "aks_name" {
  description = "Name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "aks_id" {
  description = "ID of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.id
}

output "aks_fqdn" {
  description = "Fully qualified domain name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.fqdn
}

output "aks_kubernetes_version" {
  description = "Kubernetes version running on AKS"
  value       = azurerm_kubernetes_cluster.aks.kubernetes_version
}

output "aks_node_count" {
  description = "Number of AKS nodes"
  value       = var.aks_node_count
}

output "aks_vm_size" {
  description = "VM size used by the AKS node pool"
  value       = var.aks_vm_size
}

output "aks_subnet_id" {
  description = "Subnet ID used by AKS"
  value       = azurerm_subnet.subnet.id
}

output "aks_identity_principal_id" {
  description = "Principal ID of the AKS managed identity"
  value       = azurerm_kubernetes_cluster.aks.identity[0].principal_id
}

output "aks_identity_tenant_id" {
  description = "Tenant ID of the AKS managed identity"
  value       = azurerm_kubernetes_cluster.aks.identity[0].tenant_id
}




output "aks_get_credentials_command" {
  description = "Azure CLI command to configure kubectl access to AKS"
  value = "az aks get-credentials --resource-group ${azurerm_resource_group.rg.name} --name ${azurerm_kubernetes_cluster.aks.name}"
}



output "kubectl_get_nodes_command" {
  description = "Command to check AKS nodes"
  value       = "kubectl get nodes"
}

output "kubectl_get_pods_command" {
  description = "Command to check all AKS pods"
  value       = "kubectl get pods -A"
}
