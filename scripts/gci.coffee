# Description:
#   Find out the timezone of a location!
#
# Commands:
#   hubot timezone <location> - Returns the timezone of a location.
#
# Author:
#   smsunarto (https://github.com/smsunarto)

module.exports = (robot) ->
  robot.respond /gci/i, (msg) ->
  	msg.reply "Hold on"