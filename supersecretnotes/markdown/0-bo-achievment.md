# Ballistic Overkill 1000 games achievement speed up

## What

[Ballistic Overkill](https://store.steampowered.com/app/296300/Ballistic_Overkill/)(BO) is a fps game on steam of which I used to play the free web version on Kongregate a long fkn time ago.
I had all [achievements](https://steamcommunity.com/stats/296300/achievements) except `The stuff I've seen...` which is the one you get for playing a thousand matches.
It was a bit scuffed since it started counting after I started playing, if I can remember correctly.
But somehow after this process of getting it the ingame count of matches played is less than 1000.
I didn't feel like playing 500+ matches so I decided to cheat a little bit (it won't affect other players).

## How

Set up your own dedicated BO server with some changed settings so matches go by quickly.
Example code is for Arch based distro's.
- Install steam and install the game within steam:
  - `sudo pacman -S steam`
- Install steamcmd with your AUR helper of choice:
  - `paru steamcmd`
- Install the BO game server with steamcmd:
  - `steamcmd +login anonymous +force_install_dir server +app_update 416880 validate +quit`
- Move into the server directory:
  - `cd .steam/steamcmd/server`
- Run the server:
  - `./BODS.x86 -batchmode -nographics -logfile output.txt`

This will get you a regular working server you can play on.
For this trick you don't need to host it on a real server, just run the server locally on your machine and than play the game, connect to your own server.
The above steps were taken from [this steam community discussions thread](https://steamcommunity.com/app/296300/discussions/1/135508662495143639).

To get the benefits, you need to change the settings in `config.txt`.
Firstly we can set the match time to 1 minute so the matches go by much faster: `MatchTime=1`.
The rounds gamemode has it's own parameters: `Rounds=1`, `RoundTime=30` to have one quick 30 sec round with default 26 second warm up, summing to aprox. a minute.
When playing, you need to join the leaderboard so just spawn in and do nothing. The inactivity timeout will not kick in within the short matches timespan.
With this method every round takes `40 + match_time_in_seconds + loading_time` seconds. You will need to load the maps and the lobby with next match vote takes 40 seconds.
You don't need to click to vote, it will just pick a random map and go.

To go faster, we can set `WarmUpTime=0`. This is the warmup time for rounds gamemode.
It won't work properly, making it skip the the whole match. However, it will count towards the achievement.
So effectively the match itself takes 0 seconds now, leaving `40 + loading_time` seconds a 'match'.
For this you will need to vote for rounds gamemode to ensure you will get this optimal match everytime.

Here follows the complete `config.txt` that will work for this task. The `OwnerId` is set to mine so if I get into your server it's mine :)

```
# Ballistic Overkill Dedicated Server Configuration File
# After changing any configuration you must restart the server to take effect

# Server name as listed in server browser
ServerName=NotASuspiciousServerAtAll

# UDP Server port
ServerPort=27015

# Server Query Port
QueryPort=27016

# Max players
# Valid values are from 2 to 16
MaxPlayers=12

# Max Spectators
MaxSpectators=4

# Max ping (in miliseconds)
# When the client's ping is greater than MaxPing he will be kicked from the server
# Use 0 (zero) to turn it off.
MaxPing=0

# Start game map
# Valid values are:
# 1: Sunnsquare Mall
# 2: Corporate Park
# 3: Hollow
# 4: Nox Museum
# 5: Overhead
# 6: Citadel
# 7: Hakim
# 8: Blackfield
# 9: Wonderdome
# 10: Reinstate
GameMap=1

# Game mode
# Valid values are:
# 1: Team Deatchmatch
# 2: Conquest
# 3: King of the Hill
# 4: Rounds
# 5: Free for all
GameMode=1

# MatchTime
# value in minutes
MatchTime=1

#AutoBalance is on?
# 0 = false
# 1 = true
Autobalance=1

# Rounds
Rounds=1

# RoundTime
RoundTime=30

# Round warmup time to spawn into the next match
# value in seconds
WarmUpTime=0

# Password
# Set an Password to only selected players be able to enter in your match
Password=incrediblehardtoguesspassword

#DedicatedBroadcast: advanced option.
# 0: P2P Broadcast (light, player to player position update)
# 1: Server Broadcast OnDemand (medium, the server broadcasts position of players with ping above 200ms)
# 2: Server Broadcast (heavy, but ensure the packets sent between players have lowest ping as possible)
DedicatedBroadcast=1

# Banner shown when the client is logging into the server
# Valid types are JPG and PNG
# Image size is 328x82 pixels
# Sample Url: http://i.imgur.com/TZyeCgt.png
BannerURL=
# URL to open when the user clicks over the banner
# Sample Url: http://google.com
ClickURL=

# OwnerId of the DedicatedServer. you must fill a valid 'SteamID64'.
# Only the user with this steamID64 can send SpecialCommands from chat to the Server
# you can find your steamID64 using this site: https://steamid.io/
# It looks like this: 76561198007483607
OwnerId=76561198128745054
```

## Why

- I wanted to complete the game
- One should not waste sigificant amounts of time increasing arbitrary counters online
  - Ironic since it still took like 6 hours to get done
    - But you can do other things while doing it
      - Only idiots write this much nested bulletpoints
- No other players are affected, just set a password and do your thing in isolation
- Why not

###### 06-10-2021
