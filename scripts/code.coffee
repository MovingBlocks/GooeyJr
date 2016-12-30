# Description:
#   Who knows how to code.
#
# Author:
#   digitalripperynr

module.exports = (robot) ->
  robot.hear /.*how.*to.*code.*?/i, (msg) ->
    msg.send("not_public school java{")

  robot.hear /.*how.*to.*code.*?/i, (msg) ->
    msg.send(" not_public class code{")

  robot.hear /.*how.*to.*code.*?/i, (msg) ->
    msg.send("  private void main(boolean[] args){")
    
  robot.hear /.*how.*to.*code.*?/i, (msg) ->
   msg.send("   I_know_how_to_code")
    
  robot.hear /.*how.*to.*code.*?/i, (msg) ->
    msg.send("  }")
    
  robot.hear /.*how.*to.*code.*?/i, (msg) ->
    msg.send(" }")
    
  robot.hear /.*how.*to.*code.*?/i, (msg) ->
    msg.send("}")