# Description:
#   General small talk and fun stuff.
#
# Author:
#   gkaretka (https://github.com/gkaretka)
#   mjuvekar7 (https://github.com/mjuvekar7)

module.exports = (robot) ->
  robot.respond /hello/i, (msg) ->
    msg.reply("Gooey Jr, at your service!")

  robot.respond /thanks|thx|thank you/i, (msg) ->
    msg.reply("You're welcome!")

  robot.hear /.*any(body|one).here.?$/i, (msg) ->
    msg.reply("Yup, I'm here - although I'm just a bot.")

  robot.respond /.*Merry Christmas.*?/i, (msg) ->
    msg.reply("Merry Christmas to you, too!")

  robot.respond /.*good morning.*/i, (msg) ->
    msg.reply("Have a nice day!")

  robot.respond /.*good afternoon.*/i, (msg) ->
    sender = msg.message.user.name
    msg.send("You too, #{sender}!")

  robot.respond /.*good night.*/i, (msg) ->
    msg.reply("💤")

  robot.respond /hargle(!)*$/i, (msg) ->
    msg.reply("Bargle!")

  robot.respond /bargle(!)*$/i, (msg) ->
    msg.reply("Hargle bargle!")

  robot.respond /hargle bargle(!)*$/i, (msg) ->
    msg.reply("HARGLE BARGLE!!")
