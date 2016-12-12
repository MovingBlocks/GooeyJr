# Description:
#   See ethereum value

module.exports = (robot) ->
  robot.respond /gimme (.*)%(.*)/i, (msg) ->
    v_currency = msg.match[1]
    r_currency = msg.match[2]
    msg.http("https://coinmarketcap-nexuist.rhcloud.com/api/#{v_currency}")
      .header('Content-Type', 'application/json')
      .get() (err, res, body) ->
        data = JSON.parse body
        prices = data.price
        msg.send "#{prices[r_currency]}"
