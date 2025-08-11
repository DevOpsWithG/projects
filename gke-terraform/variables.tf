variable "project_id" {}
variable "region" {
  default = "us-west1"
}
variable "credentials_file" {}

variable "node_count" {
  default = 1
}
variable "machine_type" {
  default = "e2-medium"
}

