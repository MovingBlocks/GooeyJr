# Description:
#   See ethereum value

module.exports = (robot) ->
  robot.respond /eth/i, (res) ->
    res.http("https://coinmarketcap-nexuist.rhcloud.com/api/eth")
      .header('Content-Type', 'application/json')
      .get() (err, res, body) ->
        data = JSON.parse body
        res.send "#{data.price.usd}"
