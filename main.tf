
provider "github" {
  token = var.github_token
  owner = "antonakv"
}

resource "github_repository" "testrepo-tf" {
  name        = "testrepo-tf"
  description = "My test repo"
  visibility = "public"
  vulnerability_alerts = null
}
