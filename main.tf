# Create teams
module "teams" {
  source  = "./github-teams"

  teams = [
    {
      name = "team1"
    },
    {
      name = "team2"
    },
    {
      name = "team3"
    },
    {
      name = "team4"
    },
    {
      name = "team5"
    },
    {
      name = "team6"
    },
  ]
}

module "team-membership" {
  source = "./github-team-member"
  
  username  = "user1"
  role_org  = "admin"

  depend_getter = "${module.our-teams.depend_setter}"

  teams = [
    {
      team_slug = "team1"
      role_team = "maintainer"
    },
    {
      team_slug = "team2"
      role_team = "member"
    }
  ]
}
