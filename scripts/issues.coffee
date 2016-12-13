# Author:
#   gkaretka

# Description:
#   See issues on chosen public repo

# Usage:
#   hubot convert <user-name>/<repo-name>

module.exports = (robot) ->
  robot.respond /issues (.*)//(.*)/i, (msg) ->
    sender = msg.message.user.name
    msg.http("https://coinmarketcap-nexuist.rhcloud.com/api/#{v_currency}")
      .header('Content-Type', 'application/json')
      .get() (err, res, body) ->
        data = JSON.parse body
        title = data.title
        url = data.html_url
        msg.send "#{sender}: #{title}, #{url}"
