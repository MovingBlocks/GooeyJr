module.exports = (robot) ->
	robot.respond /module (.*)/i, (msg) ->
		sender = msg.message.user.name
		module = msg.match[1]
		msg.send("#{sender}: https://github.com/Terasology/#{module}")
	robot.respond /stackoverflow (.*)/i, (msg) ->
		sender = msg.message.user.name
		search = msg.match[1]
		search = search.split(" ").join("+")
		msg.send("#{sender}: http://stackoverflow.com/search?q=#{search}")
	robot.respond /google (.*)/i, (msg) ->
		sender = msg.message.user.name
		search = msg.match[1]
		search = search.split(" ").join("+")
		msg.send("#{sender}: https://www.google.com/#safe=strict&q=#{search}")
	robot.respond /youtube (.*)/i, (msg) ->
		sender = msg.message.user.name
		search = msg.match[1]
		search = search.split(" ").join("+")
		msg.send("#{sender}: https://www.youtube.com/results?search_query=#{search}")
	robot.respond /wikipedia (.*)/i, (msg) ->
		sender = msg.message.user.name
		search = msg.match[1]
		search = search.split(" ").join("_")
		msg.send("#{sender}: https://en.wikipedia.org/wiki/#{search}")
# Github (Valid Module Name)
# StackOverflow (Search Term)
# Google (Search Term)
# Youtube (Search Term)
# Wikipedia (Search Term)
