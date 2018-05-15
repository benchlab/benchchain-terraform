# BenchChain Terraform
Deploy Multi-Regional BenchChain Clusters On `Digital Ocean` With Terraform


## What Is This?
This Terraform deployment configuration automatically sets up DigitalOcean droplets and has been modified to also install or mass-deploy BenchChain's TestNet. 

## Initial Instructions

- Install Terraform via [https://www.terraform.io](https://www.terraform.io)
- Create a DigitalOcean API token at [https://cloud.digitalocean.com/settings/api/tokens](https://cloud.digitalocean.com/settings/api/tokens).
- Make sure API settings are set to Read/Write
- Create SSH keys
- Follow `BenchChain Terraform Build` instructions below.

## BenchChain Terraform Build

```
    export DO_API_TOKEN="your-digital-ocean-api-token"
    export SSH_KEY_FILE="$HOME/.ssh/id_rsa.pub"

    terraform init
    terraform apply -var DO_API_TOKEN="$DO_API_TOKEN" -var SSH_KEY_FILE="$SSH_KEY_FILE"
````

## Finalize
At the end you will get a complete list of BenchChain IP addresses that belong to all the new droplets that were launched via this deployment script
At the end you will get a list of IP addresses that belongs to your new droplets.


Destroy BenchChain Node
-------

Run the command below:
`terraform destroy`
