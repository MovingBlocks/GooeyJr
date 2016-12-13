module.exports = (robot) ->
  robot.hear /.*how to run.*(?:the game)?.*from source.*/i, (res) ->
    res.send "Need help with running the game from source? Make sure you've checked this guide: https://github.com/MovingBlocks/Terasology/wiki/Dev-Setup"

  robot.hear /.*(?:where|how).*download.*terasology/i, (res) ->
    res.send "Check out our Downloads page here: http://terasology.org/#download"

  robot.hear /what is terasology(?:\?)?/i, (res) ->
    res.send "Terasology is a game that pays ample tribute to Minecraft in initial look and origin, but stakes out its own niche by adopting the NPC-helper and caretaker feel from such games as Dwarf Fortress and Dungeon Keeper. Check out our website at http://terasology.org!"

  robot.hear /.*where.*release version.*/i, (res) ->
  	res.send "The latest stable release is Alpha 6: https://github.com/MovingBlocks/Terasology/releases/tag/v1.3.0"