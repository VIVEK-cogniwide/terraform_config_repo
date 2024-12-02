resource "random_string" "user_password" {
  length = 12
  special = true
}

resource "azuread_user" "example" {
  user_principal_name = "${var.display_name}@vivek03052003outlook.onmicrosoft.com"
  display_name        = var.display_name
  mail_nickname       = var.mail_nickname
  password            = random_string.user_password.result
}