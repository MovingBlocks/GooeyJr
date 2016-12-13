module.exports = (robot) ->

  robot.respond /(List of Modules)/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: https://github.com/MovingBlocks/Terasology/blob/develop/docs/Modules.md")
    
  robot.respond /(Wiki)/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: https://github.com/MovingBlocks/Terasology/wiki")
    
  robot.respond /(GitHub)/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: https://github.com/MovingBlocks/Terasology")
    
  robot.respond /(GooeyBot Help)/i, (msg) ->
    sender = msg.message.user.name
    msg.send("#{sender}: https://github.com/MovingBlocks/GooeyJr/")
    
# Commands:
# List of Modules: Returns link to the list of Terasology modules
# Wiki: Returns a link to the Terasology Wiki
# Github: Returns a link to the Terasology GitHub
# GooeyBot Help: Returns a link to the GooeyBot Github Page
