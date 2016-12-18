# Description
#   Tells the user a joke.
#
# Commands:
#   "nameOfBot: joke" followed by anything
#   Example -> GooeyJrVaibhav: Joke, please.
#
# Author:
#   VaibhavBajaj (https://github.com/VaibhavBajaj)

jokeList = ["Who is the hide and seek champion since 1958?", 
      "I'm on a whiskey diet. Guess what.", 
      "A seal walks into a club... ", 
      "Did you hear about the guy whose whole left side was cut off?", 
      "How many programmers does it take to change a light bulb?", 
      "If you put a million monkeys at a million keyboards, one of them will eventually write a Java program."]
jokeAnswerList = [";", 
            "I've lost three days already.", 
            "... That's it really", 
            "He's all right now.", 
            "None, that's a hardware problem", 
            "The rest of them will write Perl programs."]

module.exports = (robot) ->
   robot.respond /(.*)joke(.*)/i, (msg) ->
      randNum = Math.random() * 5
      msg.send "Joke? Joke! I know a JOKE!"
      jokeMes = jokeList[randNum]
      msg.send jokeMes
      jokeAnswerMes = jokeAnswerList[randNum]
      setTimeout ->
         msg.send jokeAnswerMes
      ,5000
