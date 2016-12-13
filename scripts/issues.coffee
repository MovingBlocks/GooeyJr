# Author:
#   gkaretka

# Description:
#   See issues on chosen public repo

# Usage:
#   hubot convert <user-name>@<repo-name>

module.exports = (robot) ->
  robot.respond /issues (.*)@(.*)/i, (msg) ->
    sender = msg.message.user.name
    user = msg.match[1]
    repo = msg.match[2]
    msg.http("https://api.github.com/repos/#{user}/#{repo}/issues")
      .header('Content-Type', 'application/json')
      .get() (err, res, body) ->
        data = JSON.parse body
        for object in data:
          title = object.title
          url = object.html_url
          msg.send "#{sender}: #{title}, #{url}"
