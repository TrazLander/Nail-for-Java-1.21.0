# set gamestatus to during_game
scoreboard players set fake! gamestatus 2

# Automatic Mode - remove Minimum Players scoreboard
scoreboard objectives remove MinimumPlayers
# remove Playing display
scoreboard objectives remove GameStart

function nail:_load/set_gamerules

scoreboard objectives add Enderman dummy
scoreboard players set Ticks0 Enderman 3600

scoreboard objectives add TroughKill dummy
scoreboard players set fake! TroughKill 1

# load the sponges for win detection
forceload add 199 276 200 276

# lane protection setup
scoreboard objectives remove LaneProtection
scoreboard objectives add LaneProtection dummy

# respawn rotate - no longer needed as of 1.16.2 since they added a rotation to /spawnpoint, but will be needed if map converts to bedrock
#scoreboard objectives add T1RespawnRotate dummy

# time set
execute unless score fake! DefenderHandicap matches 1 run time set 12000
execute if score fake! DefenderHandicap matches 1 run time set 10800

# difficulty
difficulty peaceful
scoreboard objectives add difficultytemp dummy
scoreboard players set fake! difficultytemp 1

# start tracking kills
scoreboard objectives remove Kills
scoreboard objectives add Kills playerKillCount
scoreboard objectives setdisplay list Kills

# force load game clock
forceload add 187 286 212 286

# start game clock
scoreboard objectives remove TimerBoard
scoreboard objectives add TimerBoard dummy
# set 21mins
scoreboard players set Ticks! TimerBoard 0
scoreboard players set Secs1! TimerBoard 0
# add 30 seconds for Defender Handicap
execute unless score fake! DefenderHandicap matches 1 run scoreboard players set Secs2! TimerBoard 0
execute if score fake! DefenderHandicap matches 1 run scoreboard players set Secs2! TimerBoard 3
scoreboard players set Mins1! TimerBoard 1
scoreboard players set Mins2! TimerBoard 2
function nail:game/game_clock/minute2
function nail:game/game_clock/minute1
function nail:game/game_clock/second2
function nail:game/game_clock/second1