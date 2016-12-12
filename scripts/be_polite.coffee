# Author:
#   gkaretka

# Description:
#   Make our bot polite

module.exports = (robot) ->
  robot.respond /(thanks|thx|thank you)/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: You're welcome")
