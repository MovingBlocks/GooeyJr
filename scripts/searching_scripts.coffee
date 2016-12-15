# Description:
#   Scripts that return search result URLs on various websites.
#
# Commands:
#   hubot module <name> - responds with a link to a Terasology module with the name.
#   hubot stackoverflow <term> - searches Stackoverflow for the term!
#   hubot google <term> - searches Google for the term!
#   hubot youtube <term> - searches Youtube for the term!
#   hubot wikipedia <term> - searches Wikipedia for the term!
#
# Author:
#   TheJYKoder (https://github.com/TheJYKoder)

module.exports = (robot) ->
	robot.respond /module (.*)/i, (msg) ->
		module = msg.match[1]
		msg.reply("https://github.com/Terasology/#{module}")
	robot.respond /stackoverflow (.*)/i, (msg) ->
		search = msg.match[1]
		search = search.split(" ").join("+")
		msg.reply("http://stackoverflow.com/search?q=#{search}")
	robot.respond /google (.*)/i, (msg) ->
		search = msg.match[1]
		search = search.split(" ").join("+")
		msg.reply("https://www.google.com/#safe=strict&q=#{search}")
	robot.respond /youtube (.*)/i, (msg) ->
		search = msg.match[1]
		search = search.split(" ").join("+")
		msg.reply("https://www.youtube.com/results?search_query=#{search}")
	robot.respond /wikipedia (.*)/i, (msg) ->
		search = msg.match[1]
		search = search.split(" ").join("_")
		msg.reply("https://en.wikipedia.org/wiki/#{search}")
        