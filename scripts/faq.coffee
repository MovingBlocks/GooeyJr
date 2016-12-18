# Description:
#   Responses to common questions.
#
# Author:
#   gkaretka (https://github.com/gkaretka)
#   TheJYKoder (https://github.com/TheJYKoder)


module.exports = (robot) ->
  robot.hear /.*how (?:do I|to) run.*(?:the game)?.*from source.*/i, (msg) ->
    msg.reply "Need help with running the game from source? Make sure you've followed the instructions in this guide: https://github.com/MovingBlocks/Terasology/wiki/Dev-Setup"

  robot.hear /.*(?:where|how).*download.*terasology/i, (msg) ->
    msg.reply "Terasology can be downloaded on our Downloads page here: http://terasology.org/#download"

  robot.hear /what is terasology(?:\?)?/i, (msg) ->
    msg.reply "Terasology is an open-source game that is similar to Minecraft in look and origin, but stakes out its own niche by adopting the NPC-helper and caretaker feel from games such as Dwarf Fortress and Dungeon Keeper. Check out our website at http://terasology.org!"

  robot.hear /.*where.*release version.*/i, (msg) ->
    msg.reply "The latest stable release is Alpha 6: https://github.com/MovingBlocks/Terasology/releases/tag/v1.3.0"
    
  robot.respond /(modules)/i, (msg) ->
    msg.reply("All of our modules are part of the Terasology org (https://github.com/Terasology). You can also use the in-game package manager to find stuff that interests you!")
    
  robot.respond /(wiki)/i, (msg) ->
    msg.reply("Our wiki is located at https://github.com/MovingBlocks/Terasology/wiki.")
  
  robot.respond /(tutorial)/i, (msg) ->
    msg.reply("Here's one https://www.youtube.com/watch?v=6RffFhBysKU")
    
  robot.respond /(github)/i, (msg) ->
    msg.reply("Our main repo is located at https://github.com/MovingBlocks/Terasology.")
    
  robot.respond /(gooeyjr)/i, (msg) ->
    msg.reply("At your service! https://github.com/MovingBlocks/GooeyJr/")
