tellraw @a ["",{"text":"Victory to the Invaders!","color":"dark_red"}]

# tnt board
scoreboard objectives add TNTboard dummy
scoreboard players set team! TNTboard 2
scoreboard players set fake! TNTboard -1

# load endofgame
function nail:setup/load_endofgame