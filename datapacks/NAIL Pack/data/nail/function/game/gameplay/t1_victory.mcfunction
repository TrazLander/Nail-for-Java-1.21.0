tellraw @a ["",{"text":"Victory to the Defenders!","color":"dark_aqua"}]

# tnt board
scoreboard objectives add TNTboard dummy
scoreboard players set team! TNTboard 1
scoreboard players set fake! TNTboard -1

# load endofgame
function nail:_load/load_3_after_game