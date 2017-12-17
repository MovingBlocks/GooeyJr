# Description:
#   Adds github integration.
#
# Dependencies:
#   "githubot": "0.4.0"
#
# Configuration:
#  HUBOT_GITHUB_TOKRN - Authorization token for github.
#   See https://github.com/iangreenleaf/githubot for details
#
# Commands:
#   hubot create repo <repo name> - Creates a repo in MovingBlocks with the given name
#   hubot add <user> to team <team name> - Adds a user to a github team.
#
# Author:
#   simplyianm
module.exports = (robot) ->
  github = require('githubot') robot

  robot.respond /create repo (["'\w: -_]+)/i, (msg) ->
    unless robot.auth.hasRole msg.envelope.user, 'github'
      msg.send "Sorry #{msg.message.user.name} but you don't have the right role to request that."
      return

    data =
      name: msg.match[1].trim()

    # TODO: Move away from hard coded org name
    github.post 'orgs/Nanoware/repos', data, (repo) ->
      msg.send "Repo #{repo.name} created at #{repo.html_url}"

  robot.respond /add (["'\w: -_]+) to team (["'\w: -_]+)/i, (msg) ->
    unless robot.auth.hasRole msg.envelope.user, 'github'
      msg.send "Sorry #{msg.message.user.name} but you don't have the right role to request that."
      return

    github.get 'orgs/Nanoware/teams', (teams) ->
      ourTeam = null
      for team in teams
        if team.name.toLowerCase() is msg.match[2]
          ourTeam = team
          break

      if ourTeam is null
        msg.send "There is no team named '#{msg.match[2]}'!"
        return

      github.get "users/#{msg.match[1]}", (user) ->
        if user is null
          msg.send "There is no user on Github named '#{msg.match[1]}'!"
          return

        username = user.login
        github.request 'PUT', "teams/#{ourTeam.id}/members/#{username}", {}, (res) ->
          msg.send "#{username} has been added to the team #{ourTeam.name}."
