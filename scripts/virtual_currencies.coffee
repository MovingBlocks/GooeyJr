# Author:
#   gkaretka

# Description:
#   See virtual currencies values

# Usage:
#   hubot convert <virtual-currency>%<real-currency>

module.exports = (robot) ->
  robot.respond /convert (.*)%(.*)/i, (msg) ->
    v_currency = msg.match[1].toLowerCase()
    r_currency = msg.match[2].toLowerCase()
    msg.http("https://coinmarketcap-nexuist.rhcloud.com/api/#{v_currency}")
      .header('Content-Type', 'application/json')
      .get() (err, res, body) ->
        data = JSON.parse body
        prices = data.price
        if (price?)
          msg.send "1#{v_currency} = #{prices[r_currency]}#{r_currency}"
        else
          msg.send "Wrong virtual/real currency."
