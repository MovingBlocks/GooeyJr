# Description:
#   A totally fair and unbiased random number generator.
#
# Commands:
#   hubot random - respond with a random number between 0 and 1.
#   hubot random between <lower> and <upper> - respond with a random number between lower and upper.
#
# Author:
#   mjuvekar7 (https://github.com/mjuvekar7)

module.exports = (robot) ->
    robot.respond /random$/i, (msg) ->
        msg.reply("Rolled " + Math.random() + "!")

    robot.respond /random between (\d+) and (\d+)/i, (msg) ->
        if parseInt(res.match[1]) > parseInt(res.match[2])
            lower = parseInt(res.match[2])
            upper = parseInt(res.match[1])
        else
            lower = parseInt(res.match[1])
            upper = parseInt(res.match[2])
        rand = Math.floor(Math.random() * (upper - lower + 1) + lower)
        msg.reply("Rolled #{rand}!")
