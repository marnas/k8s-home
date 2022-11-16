variable "ssh_key" {
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDlzoR7xf3rMW+4WzQHCEErepKLSik3JpYaRC2KNdc6jwb1VLh37JxDrqMdotBWwpzvQF1xP78fgjwp5QjQ0xr8X3rS3TjURm909Foy+MWdueFOEEVNCqYB6+kUV1olrbFZigbkXUqYGsBU1osHMT5Nl+BJMMuXyWKmF7NVqaM+vVwygtzS+hpMLYxIdmAX1cVxhynqLBdf98fcFkKbQ0HOVeUVBcKGAVtWKicyK0GlDMNa8+fcULDoVOssXETbWu1Fxs6UiSrmN30GVJWLGk6gI/UBQutp9aY4OvYMcpEfMje+/8ZVKbksGNe+1B3CvSjB96aA4Z8BvO6piY8d1bQ+w8BqzcDkQzhrTJrhUDl1mwkXyqRuRYumyRPjsRctQuDjsMv/gFkfym69dtKbKH0NklO+NViTwhPEfBRfZKQs523MBrlJVTcXMZRqikJlVeSIaJ4VBAKTlZPJfnu25/4SGS1e5x6tb5Y1qedIRByGcTGa5hsijGu8CKkl6KjoEp8mXQbxc0Fq/GXbPSFBytFad+LSz0G4aTMorFL2uqu5firDbdqaVkTpkWQXyw1n22CALKJcOWx8XXBfrDjvGWHbdYmxZMhfNS1PD7yFjMx299QEEjyl0iT12ULyzycRyLWG1oNYbPeYHHq3XstYMQAIMyGCqR36ECOeu9ellXTWuQ=="
}

variable "proxmox_node" {
    default = "pve"
}

variable "template_name" {
    default = "ubuntu-kinetic-cloud"
}