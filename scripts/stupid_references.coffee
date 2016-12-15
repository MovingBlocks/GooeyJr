# Description:
#   Just a bunch of silly references. You can tell from the title :)
#
# Author:
#   SufurElite (https://github.com/SufurElite)

module.exports = (robot) ->
  
  robot.hear /You're a wizard, Harry/i, (msg) ->
    msg.replt("What's a wizard?....And who's Harry?")
   
  robot.hear /What is love?/i, (msg) ->
    msg.reply("Baby don't hurt me, don't hurt me, no more!")

  robot.respond /Luke, I am your father/i, (msg) ->
    msg.send("Actually, the CORRECT quote is \"No, I am your father\"!")