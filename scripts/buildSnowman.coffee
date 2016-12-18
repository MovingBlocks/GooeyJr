# Description
#   Builds a snowman.
#
# Commands:
#   "nameOfBot:" followed by keywords:"christmas, snow, snowman, etc." in a sentence
#   Example -> GooeyJrVaibhav: What are you doing for chistmas?
#
# Author:
#   VaibhavBajaj (https://github.com/VaibhavBajaj)
snowmanText =  ["    ||::|:||   .--------,",
                "    |:||:|:|   |_______ /        .-.",
                "    ||::|:|| .\"`  ___  `\".    {\('v')/}",
                "    \\\/\///:  .'`   `'.  ;____`(   )'____",
                "     \====/ './  o   o  \|~     ^\" \"^   //",
                "      \\//   |   ())) .  |   Season's    \\",
                "       ||     \ `.__.'  /|   Greetings  //",
                "       ||   _{``-.___.-'\|  from: Gooey  \\",
                "       || _.\" `-.____.-'`|    ___       //",
                "       ||`        __ \   |___/   \_______\\",
                "     .\"||        (__) \    \|     /",
                "    /   `\/       __   vvvvv'\___/",
                "    |     |      (__)        |",
                "     \___/\                 /",
                "       ||  |     .___.     |",
                "       ||  |       |       |",
                "       ||.-'       |       '-.",
                "   jgs ||          |          )",
                "       ||----------'---------'"]

module.exports = (robot) ->
   robot.respond /(.*)(christmas|snow|snowman|winter)(.*)/i, (msg) ->
      msg.send "I do really love Winter, especially Christmas! I get to build a snowman. Wanna see how?!"
      setTimeout ->
         msg.send "Oh, I'm all excited now. Don't type anything for a few seconds please."
      ,3000
      for i in [0..18]
            msg.send snowmanText[i]
