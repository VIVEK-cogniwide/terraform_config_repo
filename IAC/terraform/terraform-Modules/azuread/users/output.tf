output "random_password" {
    value = random_string.user_password.result
    sensitive = false
  
}