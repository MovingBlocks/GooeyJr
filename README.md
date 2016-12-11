# GooeyJr

This repo contains an upgraded Hubot started during the Google Code In 2016 for MovingBlocks. Its goal is to replace our aging Gooey bot that was started off Hubot long ago. 

See the [Hubot Readme](https://github.com/github/hubot/blob/master/README.md) for the base details on how to Hubot.

## Environment setup  

Install `node.js` - https://docs.npmjs.com/getting-started/installing-node

Make an account on Heroku - https://www.heroku.com
 
Install the Heroku bindings: `gem install heroku`
 
However, a prerequisite to this is having both ruby and ruby gem installed. 

Finally clone the project, enter `git clone https://github.com/MovingBlocks/GooeyJr` in your terminal.

Alright, now that you have installed all of this the fun part gets to happen.

## Configure and run the bot

So now: 

* Change your directory to the GooeyJr repository you cloned
* Login to Heroku: `heroku login` - you should be prompted for your account info
* Create a Heroku application: `heroku create <name> --stack cedar` where `name` is all lower case letters, numbers, and dashes.
* Connect the remote Heroku application to your local Git repository: `heroku git:remote -a <name>` where again `name` matches what you named your app on Heroku
* Push this to heroku by entering `git push heroku master`

Once you've done this, you can now configure this bot by giving it a nickname to be displayed on an IRC chat 

* Type: `heroku config:add HUBOT_IRC_NICK="GooeyJr"` 
  * You probably want to pick a name variant, like adding your nick to the end of the bot name so users can see whose bot it is
  * There is a limit of 16 characters.
* Configure the IRC chat room it is in by entering: `heroku config:add HUBOT_IRC_ROOMS="#terasology"` 
* Lastly in the configuration, enter `heroku config:add HUBOT_IRC_SERVER="irc.freenode.net"` so the bot will connect to Freenode 

It should've automatically started after entering this (there will be a slight delay), but if not try:
 
`heroku ps:scale app=1` 
 
Furthermore, if you wish to see the logs type `heroku logs` 

To turn off the bot type `heroku ps:scale web=0`

Have Fun!
