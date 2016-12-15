module.exports = (robot) ->
    Log = "True"    

    robot.enter (res) ->
        if res.message.user.name != "BenjaminAmos"
            Log = "False " + res.message.user.name + " has been seen."
            return
        
        sender = res.message.user.name    

        SenderReverse = ""

        for i in [sender.length .. 0]
            SenderReverse += sender[i];    

        res.send("/MSG #{sender} Hello #{SenderReverse}. Sdrawkcab!")
        Log = "Done!"

    robot.respond /.ShowLog*/i, (res) ->
        sender = res.message.user.name
        res.send("/MSG #{sender} #{Log}")