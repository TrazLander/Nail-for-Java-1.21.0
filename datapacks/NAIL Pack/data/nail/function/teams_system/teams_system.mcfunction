# run
# fill buttoncheck
fill 211 82 2161 211 82 2161 redstone_block replace stone


scoreboard objectives add temp dummy
scoreboard players operation fake! temp = fake! MapMode
# disable in tourney mode
execute if score fake! temp matches 1 run tellraw @a[x=-3,y=212,z=15,dx=6,dy=3,dz=5] ["",{"text":"Team Systems can not be accessed in Tournament Mode."}]
# check T1 ready lever on
execute if score fake! temp matches 2..3 run execute if block -3 213 48 minecraft:lever[powered=true] run execute if block -3 213 46 minecraft:lever[powered=false] run scoreboard players set fake! temp 4
# check T2 ready lever on
execute if score fake! temp matches 2..3 run execute if block -3 213 48 minecraft:lever[powered=false] run execute if block -3 213 46 minecraft:lever[powered=true] run scoreboard players set fake! temp 4
# check both ready levers
execute if score fake! temp matches 2..3 run execute if block -3 213 48 minecraft:lever[powered=true] run execute if block -3 213 46 minecraft:lever[powered=true] run scoreboard players set fake! temp 4
# disable if any ready levers are triggered
execute if score fake! temp matches 4 run tellraw @a[x=-3,y=212,z=15,dx=6,dy=3,dz=5] [{"text":"You may not use Team Selection when a team's ready lever is triggered."}]
# start randomizer
execute if score fake! temp matches 2..3 run execute if block -3 213 18 minecraft:stone_button[powered=true] run scoreboard players set fake! temp 5
execute if score fake! temp matches 5 run function nail:teams_system/randomizer_load
# start Team Captain System
execute if score fake! temp matches 2..3 run execute if block 3 214 18 minecraft:stone_button[powered=true] run scoreboard players set fake! temp 6
execute if score fake! temp matches 6 run fill 187 82 2161 187 82 2161 stone replace redstone_block
execute if score fake! temp matches 6 run fill 177 141 2161 177 141 2161 redstone_block replace stone
# remove temp
scoreboard objectives remove temp

