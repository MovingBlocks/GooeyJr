# Description:
#   Find out the timezone of a location!
#
# Commands:
#   hubot timezone <location> - Returns the timezone of a location.
#
# Author:
#   smsunarto (https://github.com/smsunarto)

module.exports = (robot) ->
  robot.respond /timezone (.*)/i, (msg) ->
    loc = msg.match[1]
    robot.http("https://codein.withgoogle.com/api/program/2016/organization/")
      .header('Accept', 'application/json')
      .get() (err, res, body) ->
        if err
          msg.reply "Encountered an error :( #{err}"
          return

        data = JSON.parse body
        robot.http("https://maps.googleapis.com/maps/api/timezone/json?location=#{data.results[0].geometry.location.lat},#{data.results[0].geometry.location.lng}&timestamp=1331161200&key=AIzaSyCm5YZUGPtMiBl4lrxiNlvF_O915E-y_uI")
          .header('Accept', 'application/json')
          .get() (err, res, body) ->
            if err
              msg.reply "Encountered an error :( #{err}"
              return

            tz = JSON.parse body
            msg.reply "#{tz.timeZoneId}, #{tz.timeZoneName}!"
        msg.reply "#{data.count},#{data.results[10].completed_task_instance_count"
