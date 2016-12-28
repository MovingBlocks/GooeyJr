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
    robot.http("https://codein.withgoogle.com/api/program/2016/organization/")
      .get() (err, res, body) ->
        if err
          msg.reply "Encountered an error :( #{err}"
          return
        msg.reply "no error #{body}"