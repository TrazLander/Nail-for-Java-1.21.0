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
forceload add 0 226 -1 226

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

# start game clock
scoreboard objectives remove TimerTicks
scoreboard objectives remove TimerSecs1
scoreboard objectives remove TimerSecs2
scoreboard objectives remove TimerMins1
scoreboard objectives remove TimerMins2
scoreboard objectives add TimerTicks dummy
scoreboard objectives add TimerSecs1 dummy
scoreboard objectives add TimerSecs2 dummy
scoreboard objectives add TimerMins1 dummy
scoreboard objectives add TimerMins2 dummy
# set 21mins
scoreboard players set fake! TimerTicks 0
scoreboard players set fake! TimerSecs1 0
# add 30 seconds for Defender Handicap
execute if score fake! DefenderHandicap matches 0 run scoreboard players set fake! TimerSecs2 0
execute if score fake! DefenderHandicap matches 1 run scoreboard players set fake! TimerSecs2 3
scoreboard players set fake! TimerMins1 1
scoreboard players set fake! TimerMins2 2