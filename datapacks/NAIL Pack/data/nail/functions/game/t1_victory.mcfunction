tellraw @a ["",{"text":"Victory to the Invaders!","color":"dark_red"}]

# tnt board
scoreboard objectives add TNTboard dummy
scoreboard players set fake! TNTboard 1

# load duringgame
function nail:setup/load_duringgame