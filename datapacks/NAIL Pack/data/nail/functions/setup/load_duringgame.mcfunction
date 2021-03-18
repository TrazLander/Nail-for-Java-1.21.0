# set gamestatus to 2
scoreboard players set fake! gamestatus 2

function nail:setup/set_gamerules

scoreboard objectives add Enderman dummy
scoreboard players set Ticks0 Enderman 3600

scoreboard objectives add TroughKill dummy