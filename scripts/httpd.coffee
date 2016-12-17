module.exports = (robot) ->
  robot.router.set 'view engine', 'pug'
  robot.router.set 'views', __dirname + '/../views'

  robot.router.get '/', (req, res) ->
    res.render 'index', title: 'Home'

  robot.router.get '/help', (req, res) ->
    res.render 'help',
      title: "help",
      commands: robot.helpCommands()
