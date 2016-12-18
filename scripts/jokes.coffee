# Description
#   Tells the user a joke.
#
# Commands:
#   "nameOfBot:" followed by "joke" in a sentence
#   Example -> GooeyJrVaibhav: Joke, please.
#
# Author:
#   VaibhavBajaj (https://github.com/VaibhavBajaj)

jokeList = ["Who is the hide and seek champion since 1958?", 
      "I'm on a whiskey diet. Guess what.", 
      "A seal walks into a club... ", 
      "Did you hear about the guy whose whole left side was cut off?", 
      "How many programmers does it take to change a light bulb?", 
      "If you put a million monkeys at a million keyboards, one of them will eventually write a Java program.", 
      "To understand what recursion is...",
      "So this programmer goes out on a date with a hot chick",
      "Why don't jokes work in octal?",
      "Keyboard not found ..."]
jokeAnswerList = [";", 
            "I've lost three days already.", 
            "... That's it really", 
            "He's all right now.", 
            "None, that's a hardware problem", 
            "The rest of them will write Perl programs.", 
            "you must first understand recursion.",
            "Hahahaha ... okay, I'm okay now... Hahahahahhahahah!!",
            "Because 7 10 11.",
            "Press F1 to continue"]

module.exports = (robot) ->
   robot.respond /(.*)joke(.*)/i, (msg) ->
      msg.send "Joke? Joke! I know a JOKE!"
      randNum = Math.round(Math.random() * 10)
      jokeMes = jokeList[randNum]
      msg.send jokeMes
      jokeAnswerMes = jokeAnswerList[randNum]
      setTimeout ->
         msg.send jokeAnswerMes
      ,4000
