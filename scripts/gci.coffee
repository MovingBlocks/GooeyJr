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
        orgs = data.results
        orgs.sort (a,b) ->
          return if a.completed_task_instance_count <= b.completed_task_instance_count then 1 else -1
        response = "GCI Statistics: \n"
        for i in [0...orgs.length]
          response += "#{orgs[i].name}: #{orgs[i].completed_task_instance_count} \n"
        msg.reply "#{response}"