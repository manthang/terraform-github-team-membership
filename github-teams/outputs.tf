output "ids" {
  description = "List of team IDs"
  value       = "${compact(concat(github_team.this.*.id, list("")))}"
}
