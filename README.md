---
This Terraform configuration has three built-in modules:

* github-teams
Create teams of an Github organization, using this resource: https://www.terraform.io/docs/providers/github/r/team.html

* github-members
Create members of an Github organization, using this resource: https://www.terraform.io/docs/providers/github/r/membership.html

* github-team-membership
Add the members along with their roles into teams, using this resource: https://www.terraform.io/docs/providers/github/r/team_membership.html

---
This implements the following matrix.
Note: Empty spaces represent the user is not a member of the team.

| Username | Team1 | Team2 | Team3 | Team4 | Team5 | Team6 |
|----------|-------|-------|-------|-------|-------|-------|
|User1 | member | maintainer | member | member | maintainer | member |
|User2 | maintainer | member	| member | maintainer	| member | member |
|User3 | member | member | maintainer | member | member | member |
|User4 |  | member | member | member | member | maintainer | 
|User5 | member |  | member | member |  | member | 
|User6 | member | member | member | member | member |  |
|User7 | member | member | member | member | member | member |
|User8 | member | member |  | member | member | member |
|User9 | member | member |  | member | member | member |
|User10 | member | member |  | member | member | member |

---
Compatibility: Terraform 0.11 and ealier. 