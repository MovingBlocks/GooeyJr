# Description
# A tutorial on some basic things (step by step guides)
# Author:
# mdj117

module.exports = (robot) ->
  robot.respond /how do i set up a github account/i, (res) ->
   res.send "Go to github.com, 
             click on sign up,
             fill the information needed,
             confirm your email,
             And that's it!"
  robot.respond /(.*) how do i clone (.*)/i, (res) ->
    res.send "copy the link for example https://github.com/Username/Repository,
              then in Terminal or cmd type git clone and then the link
              then navigate to the folders via cd"
  robot.respond /how do i run the game from source/i, (res) ->
    res.send "Install gradle
              Clone into the repository https://github.com/MovingBlocks/Terasology
              run gradlew game (or ./gradlew game if using Terminal)"
  robot.respond /(.*)how do i build the game in Intellij(.*)/i, (res) ->           
    res.send "Install gradle
              Clone into the repository https://github.com/MovingBlocks/Terasology
              run gradlew idea (or ./gradlew idea if using Terminal)"
