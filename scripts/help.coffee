# Description:
#   Script that shows help url
#
# Commands:
#   hubot help - shows help url
#
# Author:
#   gkaretka (https://github.com/gkaretka)

module.exports = (robot) ->
  robot.respond /help\s*(.*)?$/i, (msg) ->
    #TODO CHANGE AFTER FINAL DEPLOYMENT TO TERASOLOGY LINK
    msg.send "Help can be found at the following link: https://gooeyjr2.herokuapp.com/help"
