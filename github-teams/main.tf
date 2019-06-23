resource "github_team" "this" {
  count       = "${length(var.teams)}"
  name        = "${lookup(var.teams[count.index], "name")}"
  description = "${lookup(var.teams[count.index], "description", "Created by Terraform")}"
  privacy     = "${lookup(var.teams[count.index], "privacy", "secret")}"
}