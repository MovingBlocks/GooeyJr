module.exports = (robot) ->
  
  robot.hear /You're a wizard, Harry/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: What's a wizard?....And whose Harry?")

  robot.hear /What is love?/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: Baby don't hurt me, don't hurt me, no more")


  robot.respond /Luke, I am your father/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: Actually, for future reference, the original quotation is No, I am your father")

  robot.respond /This is/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: SPARTAAAA!!!!!")

#
# Just adds a bunch of stupid references, as one might infer
# based upon the title
#
