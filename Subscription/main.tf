data "azurerm_billing_enrollment_account_scope" "scope" {
  billing_account_name    = var.billing_account_name
  enrollment_account_name = var.enrollment_account_name
}

resource "azurerm_subscription" "sub" {
  alias = var.alias
  subscription_name = var.subscription_name
  billing_scope_id  = azurerm_billing_enrollment_account_scope.scope.id
}