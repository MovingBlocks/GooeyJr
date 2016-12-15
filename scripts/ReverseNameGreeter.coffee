module.exports = (robot) ->
    Log = "True"    

    robot.enter (res) ->
        if res.message.user.name != "BenjaminAmos"
            Log = "False " + res.message.user.name + " has been seen."
            return
        
        sender = res.message.user.name    

        SenderReverse = ""

        for i in [sender.length .. 0]
            if sender[i] != undefined
                SenderReverse += sender[i];  

        if res.sendPrivate == undefined
            res.send("Hello #{SenderReverse}. Sdrawkcab!")
        else
            res.sendPrivate("Hello #{SenderReverse}. Sdrawkcab!")
        
        Log = "Done! Spoke to #{sender}."

    robot.respond /.ShowLog*/i, (res) ->
        sender = res.message.user.name
        
        if sender != "BenjaminAmos"
            res.sendPrivate("Sorry, this is only usable for debugging.")

        if res.sendPrivate == undefined
            Log += " No private!"
            res.send("#{Log}")
        else
            res.sendPrivate("#{Log}")

    robot.respond /.Reverse (.*)*/i, (res) ->
        sender = res.message.user.name
        
        TextReversed = ""        

        for i in [res.match[1].length .. 0]
            if res.match[1][i] != undefined
                TextReversed += res.match[1][i];  

        if res.sendPrivate == undefined
            Log += " No private!"
            
            res.send("#{TextReversed}")
        else
            res.sendPrivate("#{TextReversed}")