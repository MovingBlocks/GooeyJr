# Description:
#   Displays live GCI Statistics sorted with completed tasks!
#
# Commands:
#   hubot gci - Returns the GCI Statistics.
#
# Author:
#   nihal111 (https://github.com/nihal111)

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