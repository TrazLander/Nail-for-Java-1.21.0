# Automatic Mode - remove Minimum Players scoreboard
scoreboard objectives remove MinimumPlayers

# remove Playing display
scoreboard objectives remove GameStart

# set gamestatus to 2
scoreboard players set fake! gamestatus 2

function nail:setup/set_gamerules

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
execute if score fake! DefenderHandicap matches 0 run time set 12000
execute if score fake! DefenderHandicap matches 1 run time set 10800

# difficulty
difficulty peaceful
fill ~ ~1 ~ ~ ~1 ~ redstone_block replace stone
fill ~ ~-1 ~ ~ ~-1 ~ stone replace redstone_block
difficulty hard

# start tracking kills
scoreboard objectives remove Kills
scoreboard objectives add Kills playerKillCount
scoreboard objectives setdisplay list Kills