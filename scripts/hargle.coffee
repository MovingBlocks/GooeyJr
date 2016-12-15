module.exports = (robot) ->
    robot.respond /hargle(!)*$/i, (msg) ->
        msg.send("bargle!")

    robot.respond /bargle(!)*$/i, (msg) ->
        msg.send("hargle bargle!")

    robot.respond /hargle bargle(!)*$/i, (msg) ->
        msg.send("HARGLE BARGLE!!")
