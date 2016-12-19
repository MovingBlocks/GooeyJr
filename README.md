# GooeyJr

This repo contains an upgraded version of Hubot that was started during Google Code-In 2016 for MovingBlocks. Its goal is to replace the aging Gooey bot that was built on Hubot a long time ago. 

See the [Hubot Readme](https://github.com/github/hubot/blob/master/README.md) for basic details on how Hubot works

## Environment setup  

* Before beginning, ensure that you have both Ruby (https://www.ruby-lang.org/en/downloads/) and RubyGems (https://rubygems.org/pages/download) installed
* Install `node.js` - https://docs.npmjs.com/getting-started/installing-node
* Create an account on Heroku - https://www.heroku.com
* Install the Heroku bindings: `gem install heroku`
* Finally clone the project by entering `git clone https://github.com/MovingBlocks/GooeyJr` in your terminal
* Alright, now that you have installed all of this, the fun part gets to happen

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
* Lastly, enter `heroku config:add HUBOT_IRC_SERVER="irc.freenode.net"` so the bot connects to the Freenode server

It should automatically start after you have entered the above commands (there might be a slight delay), but if not try: `heroku ps:scale web=1`.
 
To turn off the bot type `heroku ps:scale web=0`. You can also restart the bot by typing `heroku ps:restart web`.

If you face any errors, make sure to check the logs by typing `heroku logs`. 

Have fun!
