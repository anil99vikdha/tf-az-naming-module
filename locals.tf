resource "random_id" "rand_id" {
  byte_length = 2
}

locals {
  res_base_name     = "tf-az"
  resource_name     = "${local.res_base_name}-${var.project_name}-${var.environment}"
  storage_name_conv = replace("${local.resource_name}${random.rand_id.hex}", "-", "")
}
