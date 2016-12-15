# Description:
#   Gives the user some random cat images!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot meow - respond with a random cat image
#
# Notes:
#   None
#
# Author:
#   gkaretka (https://github.com/gkaretka)

module.exports = (robot) ->
  robot.respond /meow/i, (msg) ->
    sender = msg.message.user.name
    msg.http("http://random.cat/meow")
    .header('Content-Type', 'application/json')
    .get() (err, res, body) ->
      data = JSON.parse body
      msg.send "#{sender}: Here is your random cat image #{data.file}"
