// output "db_password" {
//     value = data.terraform_remote_state.db.outputs.db_password

// }

# this password is generated with backend folder. It's pre exsisting resource so fitch it from backend tfstate file. 
# i have to specify it here. 
#output = it's from backend folder output.tf file name
#db.password = output name from backend folder output.tf file