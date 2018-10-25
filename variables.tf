variable "bootstrap_public_ip" {
  description = "The public IP address (or hostname) of a bootstrap node"
}

variable "masters_public_ips" {
  type        = "list"
  description = "List of master node public IP addresses"
}

variable "private_agents_public_ips" {
  type        = "list"
  description = "List of private agent node public IP addresses"
}

variable "public_agents_public_ips" {
  type        = "list"
  description = "List of public agent node public IP addresses"
}

variable "bootstrap_private_ip" {
  description = "The internal IP address (or hostname) of a bootstrap node. Used to generate DC/OS config.yml"
}

variable "masters_private_ips" {
  type        = "list"
  description = "List of master node internal IP addresses. Used to generate DC/OS config.yml"
}
