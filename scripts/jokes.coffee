# Description
#   Tells the user a joke.
#
# Commands:
#   Use "joke" in a sentence.
#
# Author:
#   VaibhavBajaj (https://github.com/VaibhavBajaj)

jokeList = ["Hi"]
jokeAnswerList = ["Bye"]

module.exports = (robot) ->
   robot.hear /joke/i, (msg) ->
      randNum = Math.random() * 0
      msg.send "Joke? Joke! I know a JOKE!"
      jokeMes = jokeList[randNum]
      msg.send jokeMes
      jokeAnswerMes = jokeAnswerList[randNum]
      setTimeout() ->
         msg.send jokeAnswerMes
      , 1000
