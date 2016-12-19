# Description:
#   For when you just need that trout to impact someone's face
#
# Commands:
#   .slap person
#
# Author:
#   jellysnake (http://github.com/jellysnake)

#robot.brain.set 'hubot-slap', JSON.stringify(["slaps #{user} one", "slaps #{user} two"])

#getSlap = (robot, number) ->
#  number = number or -1
#  localstorage = JSON.parse(robot.brain.get 'hubot-slap') or {}
#  if number == -1
#    return res.random localstorage
#  else
#    return localstorage[number]

#addSlap = (robot, slap) ->
#  localstorage = JSON.parse(robot.brain.get 'hubot-slap') or {}
#  localstorage.push(slap)
  
#  robot.brain.set 'hubot-slap', JSON.stringify(localstorage)
#  return localstorage.length


#module.exports = (robot) ->
#  robot.hear /\.slap (.*) (.*)/i, (msg) ->
#    user = msg.match[1]
#    msg.emote getSlap robot, msg.match[2]