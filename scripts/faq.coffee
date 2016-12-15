# Description:
#   General Gooey small talk.
#
# Author:
#   gkaretka (https://github.com/gkaretka)
#   TheJYKoder (https://github.com/TheJYKoder)


module.exports = (robot) ->
  robot.hear /.*how (?:do I|to) run.*(?:the game)?.*from source.*/i, (msg) ->
    sender = msg.message.user.name
    msg.send "#{sender}: need help with running the game from source? Make sure you've followed the instructions in this guide: https://github.com/MovingBlocks/Terasology/wiki/Dev-Setup"

  robot.hear /.*(?:where|how).*download.*terasology/i, (msg) ->
    sender = msg.message.user.name
    msg.send "#{sender}: Terasology can be downloaded on our Downloads page here: http://terasology.org/#download"

  robot.hear /what is terasology(?:\?)?/i, (msg) ->
    sender = msg.message.user.name
    msg.send "#{sender}: Terasology is an open-source game that is similar to Minecraft in look and origin, but stakes out its own niche by adopting the NPC-helper and caretaker feel from games such as Dwarf Fortress and Dungeon Keeper. Check out our website at http://terasology.org!"

  robot.hear /.*where.*release version.*/i, (msg) ->
    sender = msg.message.user.name
    msg.send "#{sender}: the latest stable release is Alpha 6: https://github.com/MovingBlocks/Terasology/releases/tag/v1.3.0"
    
  robot.respond /(modules)/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: https://github.com/MovingBlocks/Terasology/blob/develop/docs/Modules.md")
    
  robot.respond /(wiki)/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: our wiki is located at https://github.com/MovingBlocks/Terasology/wiki.")
    
  robot.respond /(github)/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: our main repo is located at https://github.com/MovingBlocks/Terasology.")
    
  robot.respond /(gooeyjr)/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: at your service! https://github.com/MovingBlocks/GooeyJr/")