# refs: https://www.terraform.io/docs/providers/github/index.html

variable "github_token" {}

variable "github_organization" {
  default = ""
}

provider "github" {
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}

# refs: https://www.terraform.io/docs/providers/github/r/repository.html
resource "github_repository" "terraform-test-repository" {
  name        = "terraform-sugoi"
  description = "AWESOME CODE!!!!"

  private   = false
  auto_init = true
}
