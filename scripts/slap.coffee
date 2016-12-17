# Description:
#   Just a bunch of silly references. You can tell from the title :)
#
# Author:
#   SufurElite (https://github.com/SufurElite)

module.exports = (robot) ->
  
  robot.msgpond /open the (.*) doors/i, (msg) ->
    doorType = msg.match[1]
    if doorType is "pod bay"
      msg.reply "I'm afraid I can't let you do that."
    else
	  msg.reply "Opening #{doorType} doors"