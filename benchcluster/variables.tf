variable "name" {
  description = "BenchChain Cluster Name"
}

variable "regions" {
  description = "Digital Ocean Regions To Launch BenchChain In"
  type = "list"
  default = ["AMS2", "FRA1", "LON1", "NYC3", "SFO2", "SGP1", "TOR1"]
}

variable "ssh_key" {
  description = "SSH Key File Name To Copy To BenchChain Nodes"
  type = "string"
}

variable "instance_size" {
  description = "Size Of Each BenchChain Instance"
  default = "4gb"
}

variable "servers" {
  description = "How Many BenchChain Instances Are We Launching"
  default     = 4
}
