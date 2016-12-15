# Description:
#   This script controls the reverse name greeting and the reversal command
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   ShowLog - for showing a log to a predefined user.
#   Reverse <text> - This will return the reverse of the text put in.
#
# Notes:
#   This will only send a greeting to me for now as it would get rather annoying if it sent one to everyone
#
# Author:
#   BenjaminAmos
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
        
        SendPrivateMessage(res, "Hello #{SenderReverse}. Sdrawkcab!")
        
        Log = "Done! Spoke to #{sender}."

    robot.respond /.ShowLog*/i, (res) ->
        sender = res.message.user.name
        
        if sender != "BenjaminAmos"
            SendPrivateMessage(res, "Sorry, this is only usable for debugging online by certain people.")
        else
            SendPrivateMessage(res, "#{Log}")

    robot.respond /.Reverse (.*)*/i, (res) ->
        sender = res.message.user.name
        
        TextReversed = ""        

        for i in [res.match[1].length .. 0]
            if res.match[1][i] != undefined
                TextReversed += res.match[1][i];  

        SendPrivateMessage(res, "#{TextReversed}")

    SendPrivateMessage = (res, Message) ->
        if res.sendPrivate == undefined
            Log += " No private!"
            res.send(Message)
        else
            res.sendPrivate(Message)