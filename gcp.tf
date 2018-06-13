variable "gcp_project" {}
variable "gcp_region" {}

provider "google" {
  credentials = "${file("account.json")}"
  project     = "${var.gcp_project}"
  region      = "${var.gcp_region}"
}
