output "service_name" {
  value = {
    resource_group_name  = "${local.resource_name}-rg"
    storage_account_name = "${local.resource_name}st"
  }
}