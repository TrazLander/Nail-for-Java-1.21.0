# set gamestatus to 2
scoreboard players set fake! gamestatus 2

function nail:setup/set_gamerules

scoreboard objectives add Enderman dummy
scoreboard players set Ticks0 Enderman 3600

scoreboard objectives add TroughKill dummy
scoreboard players set fake! TroughKill 1

# load the sponges for win detection
forceload add 0 226 -1 226

# respawn rotate - no longer needed as of 1.16.2 since they added a rotation to /spawnpoint, but will be needed if map converts to bedrock
#scoreboard objectives add T1RespawnRotate dummy