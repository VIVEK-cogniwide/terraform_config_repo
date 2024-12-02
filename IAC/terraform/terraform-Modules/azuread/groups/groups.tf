resource "azuread_group" "customer_success" {
  display_name = var.display_name
  security_enabled = true
}

# resource "azuread_group_member" "customer_success" {
#   for_each = { for u in azuread_user.users: u.mail_nickname => u if u.job_title == "Customer Success" }

#   group_object_id  = azuread_group.customer_success.id
#   member_object_id = each.value.id
# }
