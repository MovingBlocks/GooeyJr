module.exports = (robot) ->
  robot.respond /help\s*(.*)?$/i, (msg) ->
    #TODO CHANGE AFTER FINAL DEPLOYMENT TO TERASOLOGY LINK
    msg.send "Help can be found at the following link: https://gooeyjr2.herokuapp.com/help"
