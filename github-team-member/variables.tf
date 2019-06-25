variable "username" {
  description = "Name of user"
}

variable "role_org" {
  description = "Role of user in Github org"
}

variable "teams" {
  description = "List of Github team maps which user belongs to"
  type = "list"
}
