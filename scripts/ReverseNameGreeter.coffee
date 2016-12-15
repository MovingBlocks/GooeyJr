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
#   Reverse <text> - This will return the reverse of the text put in.
#
# Notes:
#   
#
# Author:
#   BenjaminAmos
module.exports = (robot) ->  

    robot.respond /.sdrawkcab*/i, (res) ->
        sender = res.message.user.name    

        SenderReverse = ""

        for i in [sender.length .. 0]
            if sender[i] != undefined
                SenderReverse += sender[i];  
        
        SendPrivateMessage(res, "Hello #{SenderReverse}. Sdrawkcab!")

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