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

    robot.hear /sdrawkcab/i, (res) ->
        sender = res.message.user.name    

        SenderReverse = ""

        for i in [sender.length .. 0]
            if sender[i] != undefined
                SenderReverse += sender[i];  
        
        res.send("Hello #{SenderReverse}. Sdrawkcab!")

    robot.hear /Reverse (.*)/i, (res) ->
        sender = res.message.user.name
        
        TextReversed = ""        

        for i in [res.match[1].length .. 0]
            if res.match[1][i] != undefined
                TextReversed += res.match[1][i];  

        res.send("#{TextReversed}")