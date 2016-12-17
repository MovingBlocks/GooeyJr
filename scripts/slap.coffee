# Description:
#   Just a bunch of silly references. You can tell from the title :)
#
# Author:
#   SufurElite (https://github.com/SufurElite)

module.exports = (robot) ->
  
  robot.respond /open the (.*) doors/i, (res) ->
    doorType = res.match[1]
    if doorType is "pod bay"
      res.reply "I'm afraid I can't let you do that."
    else
	  res.reply "Opening #{doorType} doors"