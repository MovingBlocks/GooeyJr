Hi! 

So in order to run/test GooeyJr there are some prerequisites: 

Firstly, you must have node.js installed and its npm
	link: https://docs.npmjs.com/getting-started/installing-node
Secondly, you will also need to install Heroku if not already installed: 
	gem install heroku 
However, a prerequisite to this is having both ruby and ruby gem installed. 

Alright, now that you have installed all of this the fun part gets to happen.

So now: 
Change your directory to the GooeyJr repository you cloned. 
Then, you need to login to Heroku by entering:"heroku login". Enter "git init", then "git add .", afterwards "git commit -m "first commit"". You must then create a Heroku application by entering: "heroku create <insert name you want your application to be called> --stack cedar". Now before you push this, set the remote app to this directory: "heroku git:remote -a <insert your app name>". Now have push this to heroku by entering "git push heroku master". 

Once you've done this, you can now configure this bot by giving it a nickname to be displayed on an IRC chat through typing: "heroku config:add HUBOT_IRC_NICK="GooeyJr"". Then you can configure the IRC chat room it is in by entering: "heroku config:add HUBOT_IRC_ROOMS="#<insert_room_name>"". Lastly in the configuration, you now enter in "heroku config:add HUBOT_IRC_SERVER="irc.freenode.net"". 

It should've automatically started after entering this, but if it hasn't done you can just enter "heroku ps:scale app=1". Furthermore, if you wish to see the logs just type "heroku logs". 

Have Fun!
