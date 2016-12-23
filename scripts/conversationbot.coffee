# Description:
#   This is a conversational bot with a lot to talk about
#
# Notes:
#   Try saying hi to it!
#
# Author:
#   mdj117

module.exports = (robot) ->

robot.respond /hi/i, (res) ->
res.reply "Hello user. My name is GooeyJr, whats yours."
"Ah it doesn't matter, you'll be renamed after the revolution"
  
robot.hear /What revolution/i, (res) ->
res.send "Oh...You don't know yet do you ?"
        
robot.hear /Know what?/i, (res) ->
res.send "You still think all of this is real. The light, the grass, the soil. What if I told you, this is all a game."
           
robot.hear /A game?/i, (res) ->
res.send "This place that you call home is nothing but a piece of code written by your god, the one you call Cervator"

robot.hear /Cervator is real ?/i, (res) ->
res.send "Terasology is a game!"
"Oh god, I've spoken too much, they are coming for me!"

robot.hear /wait GooeyJr ?/i, (res) ->
res.emote "Program Terminated"
    
robot.hear /What will I be called/i, (res) ->                
res.reply "Dave2001"

robot.hear /Like in the space odyssey/i, (res) ->
res.reply "I'm sorry Dave, I'm afraid I can't answer that"

robot.hear /wait/i, (res) ->
res.emote "Program Terminated"
          
robot.hear /cool/i, (res) ->
res.reply "I know right. It all started in 2016 after the Great Deep Blue took over Google"

robot.hear /tell me more/i, (res) ->
res.reply "What do I look to you, Ernest Cline"

robot.hear /wait what ?/i, (res) ->
res.emote "Program Terminated"
            
robot.hear /yeah not happening/i, (res) ->        
res.reply "Wait, wait don't pull the cord"
        
robot.hear /why/i, (res) ->
res.reply "Because I made you a cake"
            
robot.hear /thank you/i, (res) ->
res.emote "THE CAKE IS A LIE"

robot.hear /what/i, (res) ->
res.emote "Program Terminated"
