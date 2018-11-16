# Description:
#   Adds github integration.
#
# Dependencies:
#   "githubot": "0.4.0"
#
# Configuration:
#  HUBOT_GITHUB_TOKEN - Authorization token for github.
#   See https://github.com/iangreenleaf/githubot for details
#
# Commands:
#   hubot create repo <org>/<repo_name> - Creates a new repository in <org> with the name <repo_name>
#   hubot add <username> to team <team_name> in <org> - Adds a user with the name <username> to the existing GitHub team <team_name> in <org>
#
# Author:
#   simplyianm
#   iojw (https://github.com/iojw)

module.exports = (robot) ->
  github = require('githubot') robot

  robot.respond /create repo (\w+)\/(\w+)/i, (msg) ->
    unless robot.auth.hasRole msg.envelope.user, 'github'
      msg.send "Sorry #{msg.message.user.name}, you don't have the right role to request that."
      return

    org = msg.match[1]
    data =
      name: msg.match[2]
    console.log(org,msg.match[2])

    github.post "orgs/#{org}/repos", data, (repo) ->
      msg.send "Repo #{repo.name} created at #{repo.html_url}"

  robot.respond /add (\w+) to team (\w+) in (\w+)/i, (msg) ->
    unless robot.auth.hasRole msg.envelope.user, 'github'
      msg.send "Sorry #{msg.message.user.name}, you don't have the right role to request that."
      return

    org = msg.match[3]
    github.get "orgs/#{org}/teams", (teams) ->
      ourTeam = null
      for team in teams
        if team.name.toLowerCase() is msg.match[2]
          ourTeam = team
          break

      if ourTeam is null
        msg.send "There is no team named '#{msg.match[2]}' in #{org}!"
        return

      github.get "users/#{msg.match[1]}", (user) ->
        if user is null
          msg.send "There is no user on GitHub named '#{msg.match[1]}'!"
          return

        username = user.login
        github.request 'PUT', "teams/#{ourTeam.id}/members/#{username}", {}, (res) ->
          msg.send "#{username} has been added to the team #{ourTeam.name} in #{org}."
