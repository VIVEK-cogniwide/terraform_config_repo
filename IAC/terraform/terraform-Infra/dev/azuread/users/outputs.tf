output "user_password" {
    value = module.ad_user.random_password
    sensitive = false
  
}