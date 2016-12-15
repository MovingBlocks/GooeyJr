module.exports = (robot) ->
    Log = "True"    

    robot.enter (res) ->
        if res.message.user.name != "BenjaminAmos"
            Log = "False " + res.message.user.name + " has been seen."
            return
        
        sender = res.message.user.name    

        SenderReverse = " "

        for i in [sender.length .. 0]
            SenderReverse += sender[i];    

        if res.sendPrivate == undefined
            res.send("Hello#{SenderReverse}. Sdrawkcab!")
        else
            res.sendPrivate("Hello#{SenderReverse}. Sdrawkcab!")
        
        Log = "Done!"

    robot.respond /.ShowLog*/i, (res) ->
        sender = res.message.user.name
        
        if res.sendPrivate == undefined
            Log += " No private!"
            res.send("#{Log}")
        else
            res.sendPrivate("#{Log}")