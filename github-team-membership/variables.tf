variable "team_slug" {
  description = "Team slug name"
}

variable "users" {
  description = "List of member user maps belong to the team"
  type        = "list"
}