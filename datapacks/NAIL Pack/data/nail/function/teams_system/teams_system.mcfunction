# run - before game
fill 183 82 2161 183 82 2161 redstone_block replace stone
fill 187 82 2161 187 82 2161 redstone_block replace stone

# tick
# random team button pressed
execute if block -3 213 18 minecraft:stone_button[face=wall,facing=east,powered=true] run fill 190 82 2161 190 82 2161 redstone_block replace stone
# team captain system button pressed
execute if block 3 214 18 minecraft:stone_button[face=wall,facing=west,powered=true] run fill 190 82 2161 190 82 2161 redstone_block 0 replace stone 0

# run
# fill buttoncheck
fill 211 82 2161 211 82 2161 redstone_block replace stone
# add temp
scoreboard objectives add temp dummy
# test for game status
scoreboard players operation @p[x=0,y=213,z=18] temp = fake! gamestatus
# disable if game has started or ended
execute as @p[scores={temp=2..3}] run tellraw @a[x=0,y=213,z=18] ["",{"text":"You may not use the Team Selection when a game has already started."}]
scoreboard players reset @a[scores={temp=2..3}] temp
# test for map mode
scoreboard players operation @a[scores={temp=0..}] temp = fake! MapMode
# disable in tourney mode
execute as @p[scores={temp=1}] run tellraw @a[x=-3,y=212,z=15,dx=6,dy=3,dz=5] ["",{"text":"Team Systems can not be accessed in Tournament Mode."}]
# check T1 ready lever on
execute as @p[scores={temp=2..3}] run detect -3 213 48 minecraft:lever 9 execute as @p run detect -3 213 46 minecraft:lever 1 scoreboard players set @a[scores={temp=2..3}] temp 4
# check T2 ready lever on
execute as @p[scores={temp=2..3}] run detect -3 213 48 minecraft:lever 1 execute as @p run detect -3 213 46 minecraft:lever 9 scoreboard players set @a[scores={temp=2..3}] temp 4
# check both ready levers
execute as @p[scores={temp=2..3}] run detect -3 213 48 minecraft:lever 9 execute as @p run detect -3 213 46 minecraft:lever 9 scoreboard players set @a[scores={temp=2..3}] temp 4
# disable if any ready levers are triggered
execute as @p[scores={temp=4}] run tellraw @a[x=-3,y=212,z=15,dx=6,dy=3,dz=5] ["",{"text":"You may not use Team Selection when a team's ready lever is triggered."}]
# start randomizer
execute as @p[scores={temp=2..3}] run detect -3 213 18 minecraft:stone_button 9 scoreboard players set @a[scores={temp=2..3}] temp 5
execute as @p[scores={temp=5}] run fill 183 82 2164 183 82 2164 redstone_block 0 replace stone 0
# start Team Captain System
execute as @p[scores={temp=2..3}] run detect 3 214 18 minecraft:stone_button 10 scoreboard players set @a[scores={temp=2..3}] temp 6
execute as @p[scores={temp=6}] run fill 187 82 2161 187 82 2161 stone 0 replace redstone_block 0
execute as @p[scores={temp=6}] run fill 177 141 2161 177 141 2161 redstone_block 0 replace stone 0
# remove temp
scoreboard objectives remove temp


# tick?
execute as @p run detect -3 213 18 minecraft:stone_button 1 execute as @s run detect 3 214 18 minecraft:stone_button 2 execute as @s run fill 190 82 2161 211 82 2161 stone 0 replace redstone_block 0