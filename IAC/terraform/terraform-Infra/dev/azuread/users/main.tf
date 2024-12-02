module "ad_user" {
    source = "../../../../terraform-Modules/azuread/users"
    display_name = "kumar"
    mail_nickname = "kumarasamy"
}