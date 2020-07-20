#Null provider to connect to existing resources which are already created
provider "null" {
  version = "2.1.2"
}

resource "null_resource" "Cloudamize-agent-vsphere" {
  count = length(var.linux_server_ips)
  # Copy in the bash script we want to execute.
  # The source is the location of the bash script from where you will be executing this terraform code
  provisioner "file" {
    source      = "./camize-agent-install.sh"
    destination = "/tmp/camize-agent-install.sh"
  }

  provisioner "file" {
    source      = "./start_agent.sh"
    destination = "/tmp/start_agent.sh"
  }

  # Login to the remote servers with their valid credentials to connect.
  connection {
    type     = "ssh"
    user     = var.sshuser
    password = var.sshpass
    host = element(concat(var.linux_server_ips, [""]), count.index)
  }

  # Change permissions on bash script and execute from your user.
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/camize-agent-install.sh",
      "chmod +x /tmp/start_agent.sh",
      "echo PASSWORD | sudo -S sh /tmp/camize-agent-install.sh",
      "echo PASSWORD | sudo -S sh /tmp/start_agent.sh",
    ]
  }
} # end resource