# tnt board
execute if score team! TNTboard matches 1 run function nail:game/gameplay/t1_tnt_board
execute if score team! TNTboard matches 2 run function nail:game/gameplay/t2_tnt_board


# random team button pressed
execute if block -3 213 18 minecraft:stone_button[powered=true] run tellraw @a[x=0,y=213,z=18,distance=..5] [{"text":"You may not use the Team Selection when a game has already started.","italic":true,"color":"red"}]
# team captain system button pressed
execute if block 3 214 18 minecraft:stone_button[powered=true] run tellraw @a[x=0,y=213,z=18,distance=..5] [{"text":"You may not use the Team Selection when a game has already started.","italic":true,"color":"red"}]