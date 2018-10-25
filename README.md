DC/OS Terraform-Ansible-Bridge (Inventory and group_vars generator)
============
This module creates two local files that can be used by Ansible to manage a DC/OS cluster.

EXAMPLE
-------

```hcl
module "dcos-ansible-bridge" {
  source  = "terraform-dcos/dcos-ansible-bridge/local_file"
  version = "~> 0.1"
  bootstrap_public_ip       = "${module.dcos-infrastructure.bootstrap.public_ip}"
  masters_public_ips        = ["${module.dcos-infrastructure.masters.public_ips}"]
  private_agents_public_ips = ["${module.dcos-infrastructure.private_agents.public_ips}"]
  public_agents_public_ips  = ["${module.dcos-infrastructure.public_agents.public_ips}"]

  bootstrap_private_ip      = "${module.dcos-infrastructure.bootstrap.private_ip}"
  masters_private_ips       = ["${module.dcos-infrastructure.masters.private_ips}"]
}

module "dcos-infrastructure" {
  source  = "dcos-terraform/infrastructure/aws"
  version = "~> 0.1"

  [...]

}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| bootstrap\_private\_ip | The internal IP address (or hostname) of a bootstrap node. Used to generate DC/OS config.yml | string | - | yes |
| bootstrap\_public\_ip | The public IP address (or hostname) of a bootstrap node | string | - | yes |
| masters\_private\_ips | List of master node internal IP addresses. Used to generate DC/OS config.yml | list | - | yes |
| masters\_public\_ips | List of master node public IP addresses | list | - | yes |
| private\_agents\_public\_ips | List of private agent node public IP addresses | list | - | yes |
| public\_agents\_public\_ips | List of public agent node public IP addresses | list | - | yes |

