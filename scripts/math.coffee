# Description:
#   Allows Hubot to do mathematics.
#
# Commands:
#   hubot math me <expression> - Calculate the given expression.
#   hubot convert me <expression> to <units> - Convert expression to given units. Ex.) "math me 1g to mg" -> "1000mg"
module.exports = (robot) ->
  robot.respond /(calc|calculate|convert|math)( me)? (.*)/i, (msg) ->
    msg
      .http('http://api.mathjs.org/v1')
      .query
        hl: 'en'
        expr: msg.match[3]
      .headers
        'Accept-Language': 'en-us,en;q=0.5',
        'Accept-Charset': 'utf-8',
        'User-Agent': "Mozilla/5.0 (X11; Linux x86_64; rv:2.0.1) Gecko/20100101 Firefox/4.0.1"
      .get() (err, res, body) ->
        # Response includes non-string keys, so we can't use JSON.parse here.
        json = eval("(#{body})")
        msg.send json.rhs || 'Could not compute.'