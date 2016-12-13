module.exports = (robot) ->
  robot.respond /.*any.*(people|one).*here.*?/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}:Yeah, I am here... Although I am a bot")

  robot.respond /.*Merry Christmas.*?/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}:Merry Christmas to you, too!")


  robot.respond /.*good.*morning.*/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: Have a nice day ;)")

  robot.respond /.*good.*afternoon.*/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: You too!")

  robot.respond /.*good.*evening.*/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: 💤")