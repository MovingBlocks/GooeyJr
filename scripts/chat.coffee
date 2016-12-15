# Description:
#   General Gooey small talk.
#
# Author:
#   gkaretka (https://github.com/gkaretka)

module.exports = (robot) ->
  robot.respond /(thanks|thx|thank you)/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: You're welcome!")
    
  robot.hear /.*any.*(people|one).*here.*?/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: yep, I'm here - athough I'm just a bot :)")

  robot.hear /.*Merry Christmas.*?/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: Merry Christmas to you, too!")

  robot.respond /.*good.*morning.*/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: Have a nice day!")

  robot.respond /.*good.*afternoon.*/i, (msg) ->
    sender = msg.message.user.name
    msg.send("You too, #{sender}!")
    
  robot.respond /.*good.*night.*/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: 💤")