#  Deploy Cloudamize agents on Linux

This code is to deploy Cloudamize agents on the Linux servers using SSH protocol. Declare all Linux IP addresses into `linux_server_ips` variable

## Terraform Usage

To run this example you need to execute following Terraform commands

```hcl
terraform init
terraform plan
terraform apply
```

## Inputs

Name | Description | Type | 
---- | ----------- | ---- |
`sshuser`|Linux server's common ssh user name|string
`sshpass`|Linux server's common ssh password| string
`linux_server_ips`|List of Linux server's IP addresses|list

## Exporting Cloudamize customer key

Provide appropriate customer key for your cloudamize agent in camize-agent-install.sh file

```
# export CLOUDAMIZE_CUSTOMER_KEY=CUSTOMER_KEY
```

## Authors


This code created by [Harshal Yadwadkar](mailto:harshal.yadwadkar@tieto.com) with the help from other awesome contributors.


## Other resources

* [Terraform Null Provider](https://registry.terraform.io/providers/hashicorp/null/latest/docs)
* [Terraform file Provisioner](https://www.terraform.io/docs/provisioners/file.html)
* [Terraform remote-exec Provisioner](https://www.terraform.io/docs/provisioners/remote-exec.html)

