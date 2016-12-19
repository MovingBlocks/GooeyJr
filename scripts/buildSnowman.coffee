# Description
#   Builds a snowman.
#
# Commands:
#   "nameOfBot:" followed by keywords:"christmas, snow, snowman, winter" in a sentence
#   Example -> GooeyJrVaibhav: What are you doing for chistmas?
#
# Author:
#   VaibhavBajaj (https://github.com/VaibhavBajaj)

snowmanText =  ["           ___",
                "         _[___]_  _",
                "          ( \" )  [_]",
                "      '--(`~:~`)--|'",
                "        / `-:-' \\ |",
                "     .--\\   :   /--.",
                "_..-'    '-----'    '-.._"]

module.exports = (robot) ->
   robot.respond /(.*)(christmas|snow|snowman|winter)(.*)/i, (msg) ->
      msg.send "I do really love Winter, especially Christmas! I get to build a snowman. Wanna see how?!"
      msg.send "Oh, I'm all excited now. Don't type anything for a few seconds please."
      setTimeout ->
         for i in [0..7]
            msg.send snowmanText[i]
      ,6 * 1000
