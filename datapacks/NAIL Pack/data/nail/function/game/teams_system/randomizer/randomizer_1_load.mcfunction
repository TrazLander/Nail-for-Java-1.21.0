scoreboard objectives add Rand dummy
# set all players that are playing to rand
scoreboard players set @a[scores={Teams=1..}] Rand 0
function nail:game/teams_system/randomizer/randomizer_2_randomize