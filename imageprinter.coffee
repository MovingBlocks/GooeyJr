# Description
# Prints a multitude of things, open to future additions.
# Credit:
# VaibhavBajaj for the basic idea.
# Author:
# mdj117

sheepText =  ["@@@@@@@",
              "@^_^@@@@@",
              "@@@@@@@",
              "!!  !!",
              "^^  ^^"]
snakeText = ["~<:<<<<<>"]

stickmanText = ["  O  ",
                "--|--",
                " / \ "]
truckText = ["     __",
             "  __/D |___",
             "/_   ___   _|",
             "   O     O"]
flowerText = [" # #",
              "# ## #",
              " # #",
              "  #",
              "  #",
              "# # #",
              "# # #",
              " ###"]             

module.exports = (robot) ->
   robot.respond /print me a sheep/i, (res) ->
      res.send "Don't type anything for a few seconds please."
      setTimeout ->
         for i in [0..7]
            msg.send sheepText[i]
      ,6 * 1000
      
    robot.respond /print me a snake/i, (res) ->
      res.send "Don't type anything for a few seconds please."
      setTimeout ->
         for i in [0..7]
            msg.send snakeText[i]
      ,6 * 1000
    
    robot.respond /print me a stickman/i, (res) ->
      res.send "Don't type anything for a few seconds please."
      setTimeout ->
         for i in [0..7]
            msg.send stickmanText[i]
      ,6 * 1000
      
    robot.respond /print me a truck/i, (res) ->
      res.send "Don't type anything for a few seconds please."
      setTimeout ->
         for i in [0..7]
            msg.send truckText[i]
      ,6 * 1000
      
    robot.respond /print me a flower/i, (res) ->
      res.send "Don't type anything for a few seconds please."
      setTimeout ->
         for i in [0..7]
            msg.send flowerText[i]
      ,6 * 1000 
