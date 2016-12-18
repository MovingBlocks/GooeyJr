# Description
#   Tells the user a joke.
#
# Commands:
#   Use "joke" in a sentence.
#
# Author:
#   VaibhavBajaj (https://github.com/VaibhavBajaj)

jokeList = ["Who is the hide and seek champion since 1958?"]
jokeAnswerList = [";"]

module.exports = (robot) ->
   robot.respond /(Tell me)? (a)? joke/i, (msg) ->
      randNum = Math.random() * 0
      msg.send "Joke? Joke! I know a JOKE!"
      jokeMes = jokeList[randNum]
      msg.send jokeMes
      jokeAnswerMes = jokeAnswerList[randNum]
      msg.send jokeAnswerMes
