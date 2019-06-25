resource "github_team" "this" {
  count       = "${length(var.teams)}"
  name        = "${lookup(var.teams[count.index], "name")}"
  description = "${lookup(var.teams[count.index], "description", "Created by Terraform")}"
  privacy     = "${lookup(var.teams[count.index], "privacy", "secret")}"
}

resource "null_resource" "dummy_dependency" {
  triggers {
    dependency_id = "${github_team.this.0.id}"
  }
}