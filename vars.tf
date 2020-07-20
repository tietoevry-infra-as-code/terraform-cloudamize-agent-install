variable "sshuser" {
  description = "Linux server's common ssh user name"
  default = ""
}

variable "sshpass" {
  description = "Linux server's common ssh password"
  default = ""
}

variable "linux_server_ips" {
  description = "List of Linux server's IP addresses"
  default = []
}
