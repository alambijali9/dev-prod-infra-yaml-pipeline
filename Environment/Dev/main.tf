module "resource_group" {
    source = "../../module/azurerm_resource_group"

devrg = var.devrg
}

module "storage_account" {
    depends_on = [ module.resource_group ]
    source = "../../module/azurerm_storage_account"

    devsa = var.dev-storage
}