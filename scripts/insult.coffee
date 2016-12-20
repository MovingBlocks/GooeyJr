# Description:
#   Express your rage with a shakespearean insult
#
# Author:
#   Patrick Wang (https://github.com/kcirtaptrick)

insultGen = [["n Artless", "Bawdy", "Beslubbering", "Bootless", "Churlish", "Cockered","Clouted","Craven","Currish", "Dankish", "Dissembling", "Droning", "n Errant", "Fawning", "Fobbing", "Froward", "Frothy", "Gleeking", "Goatish", "Gorbellied", "n Impertinent", "n Infectious", "Jarring", "Loggerheaded", "Lumpish", "Mammering", "Mangled", "Mewling", "Paunchy", "Pribbling", "Puking", "Puny", "Quailing", "Rank", "Reeky", "Roguish", "Ruttish", "Saucy", "Spleeny", "Spongy", "Surly", "Tottering", "n Unmuzzled", "Vain", "Venomed", "Villainous", "Warped", "Wayward", "Weedy", "Yeasty"],

["Base-court", "Bat-fowling", "Beef-witted", "Beetle-headed", "Boil-brained", "Clapper-clawed", "Clay-brained", "Common-kissing", "Crook-pated", "Dismal-dreaming", "Dizzy-eyed", "Dog-hearted", "Dread-bolted", "Earth-vexing", "Elf-skinned", "Fat-kidneyed", "Fen-sucked", "Flap-mouthed", "Fly-bitten", "Folly-fallen", "Fool-born", "Full-gorged", "Guts-griping", "Half-faced", "Hasty-witted", "Hedge-born", "Hell-hated", "Idle-headed", "Ill-breeding", "Ill-nurtured", "Knotty-pated", "Milk-livered", "Motley-minded", "Onion-eyed", "Plume-plucked", "Pottle-deep", "Pox-marked", "Reeling-ripe", "Rough-hewn", "Rude-growing", "Rump-fed", "Shard-borne", "Sheep-biting", "Spur-galled", "Swag-bellied", "Tardy-gaited", "Tickle-brained", "Toad-spotted", "Unchin-snouted", "Weather-bitten"],

["Apple-john", "Baggage", "Barnacle", "Bladder", "Boar-pig", "Bugbear", "Bum-bailey", "Canker-blossom", "Clack-dish", "Clot-pole", "Coxcomb", "Codpiece", "Death-token", "Dewberry", "Flap-dragon", "Flax-wench", "Flirt-gill", "Foot-licker", "Fustilarian", "Giglet", "Gudgeon", "Haggard", "Harpy", "Hedge-pig", "Horn-beast", "Huggermugger", "Jolt-head", "Lewdster", "Lout", "Maggot-pie", "Malt-worm", "Mammet", "Measle", "Minnow", "Miscreant", "Mold-warp", "Mumble-news", "Nut-hook", "Pigeon-egg", "Pignut", "Puttock", "Pumpion", "Rats-bane", "Scut", "Skains-mate", "Strumpet", "Varlot", "Vassal", "Whey-face", "Wagtail"]]

module.exports = (robot) ->
  robot.respond /insult me/i, (msg) ->
    msg.reply("Thou art a" + insultGen[0][Math.round(Math.random() * 50)] + " " + insultGen[1][Math.round(Math.random() * 50)] + " " + insultGen[2][Math.round(Math.random() * 50)] + "!" )
