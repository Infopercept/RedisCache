variable "resource_group_name" {
  description = "The name of your Azure Resource Group."
  type = string
}

variable "location" {
  description = "The region where the virtual network is created."
  type = string
}

variable "redis_cache_name" {
  description = "The name of your Azure redis cache."
  type = string
}

variable "subnet_id" {
  description = "id of the subnet"
  type = string
}

variable "capacity" {
  description = "id of the subnet"
  type = string
  default = "2"
}

variable "family" {
  description = "id of the subnet"
  type = string
  default = "C"
}

variable "sku_name" {
  description = "id of the subnet"
  type = string
  default = "Standard"
}

variable "enable_non_ssl_port" {
  description = "id of the subnet"
  type = string
  default = false
}

variable "minimum_tls_version" {
  description = "id of the subnet"
  type = string
  default = "1.2"
}

variable "redis_cache_pe_name" {
  description = "id of the subnet"
  type = string
}

variable "redis_private_sc_name" {
  description = "id of the subnet"
  type = string
}

variable "is_manual_connection" {
  description = "id of the subnet"
  type = string
  default = false
}

variable "subresource_names" {
  description = "id of the subnet"
  type = list(string)
  default = ["redisCache"]
}

variable "private_dns_zone_name" {
  description = "The storage account container access type."
  type = string  
  default = "default"
}

variable "private_dns_zone_id" {
  description = "The storage account container access type."
  type = list(string)  
  nullable = false
}
