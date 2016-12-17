# Description:
#   Sends a greeting everytime a user enters the channel unless they opt out 
#
# Notes:
#   Ignores usernames starting with 'Guest' followed by digits
#   Users can opt out by replying the bot 'Understood' 
#   Users can opt in again by messaging the bot "Reset Greeting"
#  
# Author:
#   iojw (http://github.com/iojw)

module.exports = (robot) ->
  # for testing, list of users that the bot will send the greeting to
  reply_to = ["iojw", "rzats", "Cervator", "Guest1234"]
  # list of users who have opted out of receiving the message
  opt_out = JSON.parse(robot.brain.get 'greeting') or []
  # IRC nickname of the bot
  bot_nick = process.env.HUBOT_IRC_NICK
  # regexp for Guest nicknames
  guest_nick = /^Guest\d*$/
  # greeting message sent to users
  greeting_msg = "Hello! Welcome to #terasology!\n" +
             "Do take note that this IRC channel is being logged.\n" + 
             "While we will try our best to respond to your messages as soon as possible, please be patient " +
             "and understand that not every online user will be watching the chat all the time.\n" +
             "If you would like to learn more about Terasology, be sure to check out our forums at http://forum.terasology.org " +
             "and our Github repo at http://github.com/MovingBlocks/Terasology!"
  understood_msg = "Reply 'Understood' if you do not want to receive this greeting again."

  robot.respond /understood.*/i, (msg) ->
    username = msg.message.user.name
    room = msg.message.user.room
    if not room?
      if username not in opt_out and not guest_nick.test(username)
        opt_out.push username
        robot.brain.set('greeting', opt_out)
        robot.brain.save()
        msg.send "You will not receive this greeting anymore. Message 'Reset Greeting' to me in private if you would like to undo this."
      else if guest_nick.test(username)
        msg.send "Guest accounts cannot opt out."
      else
        msg.send "You have already opted out of the greeting."

  robot.respond /reset greeting.*/i, (msg) ->
    username = msg.message.user.name
    room = msg.message.user.room
    if not room?
      if username in opt_out
        opt_out.splice(opt_out.indexOf(username), 1)
        robot.brain.set('greeting', opt_out)
        robot.brain.save()
        msg.send "You will receive the greeting the next time you join the channel."
      else
        msg.send "You haven't opted out yet!"

  robot.enter (msg) ->
    username =  msg.message.user.name
    if username not in opt_out and username isnt bot_nick and username in reply_to
      msg.sendPrivate greeting_msg
      if not guest_nick.test(username)
        msg.sendPrivate understood_msg
