# Description:
#   Allows Hubot to do mathematics.
#
# Commands:
#   hubot math me <expression> - Calculate the given expression.
#   hubot convert me <expression> to <units> - Convert expression to given units.
module.exports = (robot) ->
  robot.hear /hello/i, (res) ->
    res.send "Hello! Finally I work"
