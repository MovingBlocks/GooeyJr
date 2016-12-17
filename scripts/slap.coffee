# For when you just /really/ itch to give someone a good trouting
#
# by jellysnake

module.exports = (robot) ->
  
  robot.hear /.slap (.*)/i, (msg) ->
	name = msg.match[1]
	msg.emote("slaps #{name} around a bit with a large trout")