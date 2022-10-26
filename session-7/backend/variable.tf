variable "env" {
  type        = string
  description = "This is a variable for Environment"
  default     = "dev"
}

variable "snapshot" {
  type        = bool
  description = "Boolean for creating shapshot"
  default     = false #false means create snapshot. true means do not create snapshot
}
