# Description:
#   Commands related to issues in (public) GitHub repos.
#
# Commands:
#   hubot issues count <user-name>@<repo-name> - get the amount of issues in a GitHub repo.
#   hubot issues give <user-name>@<repo-name> - get a random issue from a GitHub repo.
#
# Author:
#   gkaretka (https://github.com/gkaretka)

max = 30
min = 0

module.exports = (robot) ->
  robot.respond /slap (.*)/i, (msg) ->
    user = msg.match[1]
    msg.emote "slaps #{user} around a bit with a large trout"