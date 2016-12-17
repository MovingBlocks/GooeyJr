# Description:
#   Basic routing for hubot webpage
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
