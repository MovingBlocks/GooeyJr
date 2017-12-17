# Description:
#   Script that shows help url
#
# Commands:
#   hubot help - shows help url
#
# Author:
#   gkaretka (https://github.com/gkaretka)

module.exports = (robot) ->
  robot.router.set 'view engine', 'pug'
  robot.router.set 'views', __dirname + '/../views'

  robot.router.get '/', (req, res) ->
    res.render 'index', title: 'Home'

  robot.router.get '/help', (req, res) ->
    res.render 'help',
      title: "help",
      commands: robot.helpCommands()

  robot.respond /help\s*(.*)?$/i, (msg) ->
    msg.send "Help can be found at the following link: https://gooeyjr.herokuapp.com/help"
