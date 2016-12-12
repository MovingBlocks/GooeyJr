# Author:
#   gkaretka

# Description:
#   Make our bot polite

module.exports = (robot) ->
  robot.respond /(thanks|thx|thank you)/i, (msg) ->
    msg.send("You're welcome")
