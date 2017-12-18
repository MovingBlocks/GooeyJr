# GooeyJr

This repo contains an upgraded version of Hubot that was started during Google Code-In 2016 for MovingBlocks. Its goal is to replace the aging Gooey bot that was built on Hubot a long time ago. 

See the [Hubot Readme](https://github.com/github/hubot/blob/master/README.md) for basic details on how Hubot works

## Environment setup  

* Install heroku CLI using the instructions here - https://devcenter.heroku.com/articles/heroku-cli
* Create an account on Heroku - https://www.heroku.com
* Finally clone the project by entering `git clone https://github.com/MovingBlocks/GooeyJr` in your terminal
* Alright, now that you have installed all of this, the fun part begins

## Configure and run the bot

So now: 

* Navigate to the GooeyJr repository that you have just cloned
* Login to Heroku: `heroku login` - you should be prompted for your account info
* Create a Heroku application: `heroku create [name] --stack cedar` replace `[name]` with the app's name in all lower case letters, numbers, or dashes
* Connect the remote Heroku application to your local Git repository: `heroku git:remote -a [name]` where again `[name]` matches what you named your app on Heroku
* Push this to heroku by entering `git push heroku master`

Once you've done this, you can now configure the bot by first giving it a nickname that will be displayed on IRC:

* Type: `heroku config:add HUBOT_IRC_NICK="GooeyJr"`, replacing "GooeyJr" with the nickname you would like the bot to have
  * You probably want to pick a name variant, such as adding your nick to the end of the bot name so that users can see whose bot it is. Take note that there is a limit of 16 characters.
* Configure the IRC channel it connects to by entering: `heroku config:add HUBOT_IRC_ROOMS="#terasology"` 
* Lastly, enter `heroku config:add HUBOT_IRC_SERVER="irc.esper.net"` so the bot connects to the Freenode server

It should automatically start after you have entered the above commands (there might be a slight delay), but if not try: `heroku ps:scale web=1`.
 
To turn off the bot type `heroku ps:scale web=0`. You can also restart the bot by typing `heroku ps:restart web`.

If you face any errors, make sure to check the logs by typing `heroku logs`. 

Have fun!

### Additional configuration for irc.freenode.net 

If you are testing out GooeyJr, there is *no need* to set this up. Espernet will work fine for testing purposes.

Unlike Espernet, Freenode requires SASL authentication for any user connecting from  AWS (which Heroku uses). Therefore, we need to set the following environment variables to allow our bot to connect to Freenode from Heroku. You will need to register an account on Freenode using your email before setting this up.

`heroku config:add HUBOT_IRC_USESASL="true"`  
`heroku config:add HUBOT_IRC_USERNAME="YOUR_USERNAME"`  
`heroku config:add HUBOT_IRC_PASSWORD="YOUR_PASSWORD"`  