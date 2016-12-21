module.exports = (robot) ->
  robot.respond /show me some memes/i, (res) ->
    robot.http("https://api.imgflip.com/get_memes")
    .header('Accept', 'application/json')
    .get() (body, id, name, url, width, height) ->
      data = JSON.parse body
      msg.reply ": #{data.file}"

  robot.respond /show me some more memes/i, (res) ->
    robot.http("https://api.imgflip.com/get_memes")
    .header('Accept', 'application/json')
    .get() (body, id, name, url, width, height) ->
      data = JSON.parse body
      msg.reply ": #{data.file}"
