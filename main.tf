#BenchChain Terraform Configuration

variable "API" {
  description = "DigitalOcean API Access Token"
}

variable "BENCH_TESTNET_NAME" {
  description = "Name of the BenchChain TestNet or BenchChain-related sidechain or dappchain to be deployed."
  default = "benchchain-testnet"
}

variable "KEY" {
  description = "Your SSH public key to be distributed amongst all BenchChain nodes."
  type = "string"
}

variable "BNODECOUNT" {
  description = "Number of BenchChain Nodes To Deploy"
  default = "4"
}

provider "digitalocean" {
  token = "${var.API}"
}

module "benchcluster" {
  source           = "./benchcluster"
  name             = "${var.BENCH_TESTNET_NAME}"
  ssh_key          = "${var.KEY}"
  servers          = "${var.SERVERS}"
}


output "public_ips" {
  value = "${module.benchcluster.public_ips}"
}
