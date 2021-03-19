tellraw @a ["",{"text":"Victory to the Defenders!","color":"dark_aqua"}]

# tnt board
scoreboard objectives add TNTboard dummy
scoreboard players set fake! TNTboard 2

# load duringgame
function nail:setup/load_duringgame