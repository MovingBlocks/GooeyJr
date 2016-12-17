# Description:
#   General small talk and fun stuff.
#
# Author:
#   gkaretka (https://github.com/gkaretka)
#   mjuvekar7 (https://github.com/mjuvekar7)

module.exports = (robot) ->
  robot.respond /(thanks|thx|thank you)/i, (msg) ->
    msg.reply("you're welcome!")
    
  robot.hear /.*any.*(people|one).*here.*?/i, (msg) ->
    msg.reply("yep, I'm here - athough I'm just a bot :)")

  robot.hear /.*Merry Christmas.*?/i, (msg) ->
    msg.reply("Merry Christmas to you, too!")

  robot.respond /.*good.*morning.*/i, (msg) ->
    msg.reply("Have a nice day!")

  robot.respond /.*good.*afternoon.*/i, (msg) ->
    sender = msg.message.user.name
    msg.send("You too, #{sender}!")
    
  robot.respond /.*good.*night.*/i, (msg) ->
    msg.reply("💤")

  robot.hear /hargle(!)*$/i, (msg) ->
    msg.reply("Bargle!")

  robot.hear /bargle(!)*$/i, (msg) ->
    msg.reply("Hargle bargle!")

  robot.hear /hargle bargle(!)*$/i, (msg) ->
    msg.reply("BARGLE HARGLE!")
