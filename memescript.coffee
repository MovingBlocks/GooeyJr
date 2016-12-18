module.exports = (robot) ->
  robot.respond /show me some memes/i, (res) ->
    msg.http("https://api.imgflip.com/get_memes")
    .get() (body, id, name, url) ->
      data = JSON.parse body
      msg.reply ": #{data.file}"

  robot.respond /show me some more memes/i, (res) ->
    msg.http("https://api.imgflip.com/get_memes")
    .get() (body, id, name, url) ->
      data = JSON.parse body
      msg.reply ": #{data.file}"