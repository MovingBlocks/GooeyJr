module.exports = (robot) ->
    robot.hear /^hargle$/i, (msg) ->
        msg.send("bargle!")

    robot.hear /^bargle$/i, (msg) ->
        msg.send("hargle bargle!")

    robot.hear /^hargle bargle$/i, (msg) ->
        msg.send("HARGLE BARGLE!!")
