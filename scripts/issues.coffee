# Author:
#   gkaretka

# Description:
#   See issues on chosen public repo

# Usage:
#   hubot convert <user-name>@<repo-name>

module.exports = (robot) ->
  # look-up issues
  robot.respond /issues (.*)@(.*)/i, (msg) ->
    sender = msg.message.user.name
    user = msg.match[1]
    repo = msg.match[2]
    msg.http("https://api.github.com/repos/#{user}/#{repo}/issues")
      .header('Content-Type', 'application/json')
      .get() (err, res, body) ->
        data = JSON.parse body
        msg.send "#{Object.keys(data).length}"
