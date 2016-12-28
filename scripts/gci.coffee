# Description:
#   Find out the timezone of a location!
#
# Commands:
#   hubot timezone <location> - Returns the timezone of a location.
#
# Author:
#   smsunarto (https://github.com/smsunarto)

module.exports = (robot) ->
  robot.respond /gci /i, (msg) ->
    robot.http("https://codein.withgoogle.com/api/program/2016/organization/")
      .header('Accept', 'application/json')
      .get() (err, res, body) ->
        if err
          msg.reply "Encountered an error :( #{err}"
          return

        data = JSON.parse body
        msg.reply "#{data.count}, #{data.results[10].completed_task_instance_count"
