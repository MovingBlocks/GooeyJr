module.exports = (robot) ->
  robot.hear /how.*run.*(?:the game)?.*from source.*/i, (res) ->
    res.send "Hey! Need help with running the game from source? Make sure you've checked this guide: https://github.com/MovingBlocks/Terasology/wiki/Dev-Setup"

  robot.respond /.*(?:do you know | how).*/i, (res) ->
    res.send "Hello! I'm afraid I'm not sure, but our wiki might have the answer! https://github.com/movingblocks/terasology/wiki"
 