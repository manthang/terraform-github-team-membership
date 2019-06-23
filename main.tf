# Create teams
module "our-teams" {
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

# Create members
module "our-members" {
  source  = "./github-members"

  users = [
    {
      username = "user1"
    },
    {
      username = "user2"
    },
    {
      username = "user3"
    },
    {
      username = "user4"
    },
    {
      username = "user5"
    },
    {
      username = "user6"
    },
    {
      username = "user7"
    },
    {
      username = "user8"
    },
    {
      username = "user9"
    },
    {
      username = "user10"
    },
  ]
}

/*
 * Add members to teams
 **/

module "members-in-team1" {
  source    = "./github-team-membership"

  team_slug = "team1"

  users = [
    {
      username  = "user1"
      role = "member"
    },
    {
      username  = "user2"
      role = "maintainer"
    },
    {
      username  = "user3"
      role = "member"
    },
    {
      username  = "user5"
      role = "member"
    },
    {
      username  = "user6"
      role = "member"
    },
    {
      username  = "user7"
      role = "member"
    },
    {
      username  = "user8"
      role = "member"
    },
    {
      username  = "user9"
      role = "member"
    },
    {
      username  = "user10"
      role = "member"
    },
  ]
}

module "members-in-team2" {
  source    = "./github-team-membership"

  team_slug = "team2"

  users = [
    {
      username  = "user1"
      role = "maintainer"
    },
    {
      username  = "user2"
      role = "member"
    },
    {
      username  = "user3"
      role = "member"
    },
    {
      username  = "user4"
      role = "member"
    },
    {
      username  = "user6"
      role = "member"
    },
    {
      username  = "user7"
      role = "member"
    },
    {
      username  = "user8"
      role = "member"
    },
    {
      username  = "user9"
      role = "member"
    },
    {
      username  = "user10"
      role = "member"
    },
  ]
}

module "members-in-team3" {
  source    = "./github-team-membership"

  team_slug = "team3"

  users = [
    {
      username  = "user1"
      role = "member"
    },
    {
      username  = "user2"
      role = "member"
    },
    {
      username  = "user3"
      role = "maintainer"
    },
    {
      username  = "user4"
      role = "member"
    },
    {
      username  = "user5"
      role = "member"
    },
    {
      username  = "user6"
      role = "member"
    },
    {
      username  = "user7"
      role = "member"
    },
  ]
}

module "members-in-team4" {
  source    = "./github-team-membership"

  team_slug = "team4"

  users = [
    {
      username  = "user1"
      role = "member"
    },
    {
      username  = "user2"
      role = "maintainer"
    },
    {
      username  = "user3"
      role = "member"
    },
    {
      username  = "user4"
      role = "member"
    },
    {
      username  = "user5"
      role = "member"
    },
    {
      username  = "user6"
      role = "member"
    },
    {
      username  = "user7"
      role = "member"
    },
    {
      username  = "user8"
      role = "member"
    },
    {
      username  = "user9"
      role = "member"
    },
    {
      username  = "user10"
      role = "member"
    },
  ]
}

module "members-in-team5" {
  source    = "./github-team-membership"

  team_slug = "team5"

  users = [
    {
      username  = "user1"
      role = "maintainer"
    },
    {
      username  = "user2"
      role = "member"
    },
    {
      username  = "user3"
      role = "member"
    },
    {
      username  = "user4"
      role = "member"
    },
    {
      username  = "user6"
      role = "member"
    },
    {
      username  = "user7"
      role = "member"
    },
    {
      username  = "user8"
      role = "member"
    },
    {
      username  = "user9"
      role = "member"
    },
    {
      username  = "user10"
      role = "member"
    },
  ]
}

module "members-in-team6" {
  source    = "./github-team-membership"

  team_slug = "team6"

  users = [
    {
      username  = "user1"
      role = "member"
    },
    {
      username  = "user2"
      role = "member"
    },
    {
      username  = "user3"
      role = "member"
    },
    {
      username  = "user4"
      role = "maintainer"
    },
    {
      username  = "user5"
      role = "member"
    },
    {
      username  = "user7"
      role = "member"
    },
    {
      username  = "user8"
      role = "member"
    },
    {
      username  = "user9"
      role = "member"
    },
    {
      username  = "user10"
      role = "member"
    },
  ]
}
