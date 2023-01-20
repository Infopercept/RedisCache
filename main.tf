resource "azurerm_redis_cache" "redis_cache" {
  name                = var.redis_cache_name
  location            = var.location
  resource_group_name = var.resource_group_name
  capacity            = var.capacity
  family              = var.family
  sku_name            = var.sku_name
  enable_non_ssl_port = var.enable_non_ssl_port
  minimum_tls_version = var.minimum_tls_version 

  redis_configuration {
  }
}

resource "azurerm_private_endpoint" "private_endpoint" {
  name                = var.redis_cache_pe_name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

   private_dns_zone_group {
    name                 = var.private_dns_zone_name
    private_dns_zone_ids = var.private_dns_zone_id
  }

  private_service_connection {
    name                              = var.redis_private_sc_name
    private_connection_resource_id    = azurerm_redis_cache.redis_cache.id
    is_manual_connection              = var.is_manual_connection
    subresource_names                 = var.subresource_names 
  }

  depends_on = [
    azurerm_redis_cache.redis_cache
  ]
}