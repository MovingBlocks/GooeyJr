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
    robot.http("https://codein.withgoogle.com/api/program/2016/organization/")
      .get() (err, res, body) ->
        if err
          msg.reply "Encountered an error :( #{err}"
          return
        data = JSON.parse body
        arry = []
        for i in [0...data.results.length]
          arry.push([data.results[i].completed_task_instance_count, data.results[i].name])
          msg.reply "#{i}"
        msg.reply "#{arry}"