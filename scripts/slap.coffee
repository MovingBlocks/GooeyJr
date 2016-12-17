# Description:
#   Just a bunch of silly references. You can tell from the title :)
#
# Author:
#   SufurElite (https://github.com/SufurElite)

module.exports = (robot) ->
  
  robot.hear /slap (.*)/i, (msg) ->
	name = msg.match[1]
    msg.reply("#{name}")
   
  robot.hear /What is love?/i, (msg) ->
    msg.reply("Baby don't hurt me, don't hurt me, no more!")

  robot.hear /Luke, I am your father/i, (msg) ->
    msg.reply("Actually, the CORRECT quote is \"No, I am your father\"!")