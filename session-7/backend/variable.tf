variable "env" {
  type        = string
  description = "This is a variable for Environment"
  default     = "dev"
}

variable "snapshot" {
  type        = bool
  description = "Boolean for creating Database shapshot"
  default     = false
}                # true means do not create snapshot
                 # false means create snapshot
                 # final_snapshot_identifier needed if it's false.