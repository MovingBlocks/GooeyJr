module.exports = (robot) ->
  robot.hear /.*any.*(people|one).*here.*?/i, (res) ->
  	res.send "Yeah, I am here... Although I am a bot"

  robot.hear /.*Merry Christmas.*?/i, (res) ->
  	res.send "Merry Christmas to you, too!"


  robot.respond /.*good.*morning/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: Have a nice day ;)")

  robot.respond /.*your.*girl.*friend.*/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: Hmm... My girlfriend? Oh, did you mean my hand? Say hello to her!")