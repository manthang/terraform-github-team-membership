output "ids" {
  description = "List of team IDs"
  value       = "${compact(concat(github_team.this.*.id, list("")))}"
}

output "depend_setter" {
  value = "${null_resource.dummy_dependency.id}"
}
