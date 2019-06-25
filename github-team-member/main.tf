data "github_team" "this" {
  count = "${length(var.teams)}"
  slug  = "${lookup(var.teams[count.index], "team_slug")}"
}

resource "github_membership" "this" {
  username = "${var.username}"
  role     = "${var.role_org}"
}

resource "github_team_membership" "this" {
  count    = "${length(var.teams)}"
  team_id  = "${data.github_team.this.*.id[count.index]}"
  username = "${var.username}"
  role     = "${lookup(var.teams[count.index], "role_team", "member")}"
  depends_on = ["github_membership.this"]
}
