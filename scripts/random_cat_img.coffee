# Author:
#   gkaretka

# Description:
#   Just give some random cat images

# Usage:
#   hubot meow

module.exports = (robot) ->
  robot.respond /meow/i, (msg) ->
    sender = msg.message.user.name
    msg.http("http://random.cat/meow")
    .header('Content-Type', 'application/json')
    .get() (err, res, body) ->
      data = JSON.parse body
      msg.send "#{sender}: Here is your random cat image #{data.file}"
