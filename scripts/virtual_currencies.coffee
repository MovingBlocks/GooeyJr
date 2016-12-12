# Description:
#   See ethereum value

module.exports = (robot) ->
  robot.respond /eth/i, (msg) ->
    msg.http("https://coinmarketcap-nexuist.rhcloud.com/api/eth")
      .header('Content-Type', 'application/json')
      .get() (err, res, body) ->
        data = JSON.parse body
        msg.send "#{data.price.usd}"
