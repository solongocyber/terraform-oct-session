resource "aws_db_instance" "main" {
  identifier = "${var.env}-rds-instance"
  allocated_storage    = 10 # storage size for rds
  db_name              = "mydb" # acual Database inside RDS Instance
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  username             = "admin" #master user inside database
  password             = random_password.db_password.result
  skip_final_snapshot  = var.env != "dev" ? true : false # true means do not take shapshot, if false you need "final_snapshot_identifier" argument.
  final_snapshot_identifier = var.env == "prod" ? "${var.env}-snapshot" : null

}


#Instance identifier = name for RDS Instance
#db_name = acual database name inside of the RDS.
