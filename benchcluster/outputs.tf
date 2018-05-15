// The BenchChain cluster name
output "name" {
  value = "${var.name}"
}

// The list of BenchChain cluster IDs
output "instances" {
  value = ["${docean_droplet.cluster.*.id}"]
}

// The list of BenchChain cluster IP addresses
output "public_ips" {
  value = ["${docean_droplet.cluster.*.ipv4_address}"]
}
