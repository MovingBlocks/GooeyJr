# Description:
#   A script that does conversion between cryptocurrencies and fiat currencies.
#
# Commands:
#   hubot crypto <cryptocurrency>%<fiat_currency> - converts a unit of cryptocurrency to a fiat currency.
#
# Author:
#   gkaretka (https://github.com/gkaretka)

module.exports = (robot) ->
  robot.respond /crypto (.*)%(.*)/i, (msg) ->
    c_currency = msg.match[1].toLowerCase()
    f_currency = msg.match[2].toLowerCase()
    msg.http("https://coinmarketcap-nexuist.rhcloud.com/api/#{c_currency}")
      .header('Content-Type', 'application/json')
      .get() (err, res, body) ->
        data = JSON.parse body
        prices = data.price
        if (prices?)
          msg.reply "1#{c_currency} = #{prices[f_currency]}#{f_currency}"
        else
          msg.reply "Wrong crypto/fiat currency."
