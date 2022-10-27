output "db_password" {
    value = random_password.db_password.result
    sensitive = true
}

# terraform will generate the new password, in order to have this password and use it later on "output.tf" has to have it. Without output tfstate file will not show the password.