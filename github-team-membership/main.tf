data "github_team" "this" {
  slug = "${var.team_slug}"
}

resource "github_team_membership" "this" {
  count    = "${length(var.users)}"
  team_id  = "${data.github_team.this.id}"
  username = "${lookup(var.users[count.index], "username")}"
  role     = "${lookup(var.users[count.index], "role", "member")}"
}