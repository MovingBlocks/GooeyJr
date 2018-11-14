#   A totally fair and unbiased random number generator.
#
# Commands:
#   hubot random - Returns a random number between 0 and 1
#   hubot random between <lower> and <upper> - Returns a random number between <lower> and <upper>
#
# Author:
#   mjuvekar7 (https://github.com/mjuvekar7)

module.exports = (robot) ->
    robot.respond /random$/i, (msg) ->
        msg.reply("Rolled " + Math.random() + "!")

    robot.respond /random between (\d+) and (\d+)/i, (msg) ->
        if parseInt(msg.match[1]) > parseInt(msg.match[2])
            lower = parseInt(msg.match[2])
            upper = parseInt(msg.match[1])
        else
            lower = parseInt(msg.match[1])
            upper = parseInt(msg.match[2])
        rand = Math.floor(Math.random() * (upper - lower + 1) + lower)
        msg.reply("Rolled #{rand}!")

    robot.respond /random (\d+)\s(\d+)/i, (msg) ->
        if parseInt(msg.match[1]) > parseInt(res.match[2])
            lower = parseInt(msg.match[2])
            upper = parseInt(msg.match[1])
        else
            lower = parseInt(msg.match[1])
            upper = parseInt(msg.match[2])
        rand = Math.floor(Math.random() * (upper - lower + 1) + lower)
        msg.reply("Rolled #{rand}!")
