# For when you just /really/ itch to give someone a good trouting
#
# by jellysnake

module.exports = (robot) ->
  
  robot.respond /.slap (.*)/i, (res) ->
	name = res.match[1]
	res.emote("slaps #{name} around a bit with a large trout")