# Description:
#   For when you just need that trout to impact someone's face
#
# Commands:
#   .slap person
#
# Author:
#   jellysnake (http://github.com/jellysnake)

max = 30
min = 0

module.exports = (robot) ->
  robot.hear /\.slap (.*)/i, (msg) ->
    user = msg.match[1]
    msg.emote "slaps #{user} around a bit with a large trout"