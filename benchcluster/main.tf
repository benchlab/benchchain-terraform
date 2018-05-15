// Tag For BenchChain Cluster
resource "docean_tag" "cluster" {
  name = "${var.name}"
}

// Digital Ocean SSH Key For Each Node In BenchChain Cluster
resource "docean_ssh_key" "cluster" {
  name       = "${var.name}"
  public_key = "${file(var.ssh_key)}"
}

// Digital Ocean Droplet Configuration For Each BenchChain Node
resource "docean_droplet" "cluster" {
  name = "${var.name}-node${count.index}"
  image = "ubuntu-16-04-x64"
  size = "${var.instance_size}"
  region = "${element(var.regions, count.index)}"
  ssh_keys = ["${docean_ssh_key.cluster.id}"]
  count = "${var.servers}"
  tags = ["${docean_tag.cluster.id}"]

// Digital Ocean Lifecycle Settings
  lifecycle = {
	prevent_destroy = false
  }

// Digital Ocean Connection Settings
  connection {
    timeout = "30s"
  }

}
