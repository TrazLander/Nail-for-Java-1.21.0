# tnt board
execute if score team! TNTboard matches 1 run function nail:game/gameplay/t1_tnt_board
execute if score team! TNTboard matches 2 run function nail:game/gameplay/t2_tnt_board


# random team button pressed
execute if block 197 357 68 minecraft:stone_button[powered=true] run tellraw @a[x=200,y=357,z=68,distance=..5] [{"text":"You may not use the Team Selection until after the game has reset.","italic":true,"color":"red"}]
# team captain system button pressed
execute if block 203 358 68 minecraft:stone_button[powered=true] run tellraw @a[x=200,y=357,z=68,distance=..5] [{"text":"You may not use the Team Selection until after the game has reset.","italic":true,"color":"red"}]


# reset - 30 seconds to reset
scoreboard players add fake! ResetHidden 1
execute if score fake! ResetHidden matches 20.. run scoreboard players remove ~~Resetting~~ Reset 1
execute if score fake! ResetHidden matches 20.. run scoreboard players reset fake! ResetHidden
# prep regeneration
execute if score ~~Resetting~~ Reset matches 0 run scoreboard objectives remove ResetHidden
execute if score ~~Resetting~~ Reset matches 0 run gamerule doTileDrops false

# map reset
execute if score ~~Resetting~~ Reset matches 0 run execute unless score fake! Regenerate matches 0.. run function nail:game/map_reset/start