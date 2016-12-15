# Description:
#   Gives the user some random cat images!
#
# Commands:
#   hubot meow - respond with a random cat image
#
# Author:
#   gkaretka (https://github.com/gkaretka)

module.exports = (robot) ->
  robot.respond /meow/i, (msg) ->
    msg.http("http://random.cat/meow")
    .header('Content-Type', 'application/json')
    .get() (err, res, body) ->
      data = JSON.parse body
      msg.reply "Here is your random cat image: #{data.file}"
