# cell 10
scoreboard objectives add temp dummy

execute if block 278 25 2239 minecraft:stone_button[face=wall,facing=south,powered=true] run scoreboard players set fake! temp 1
# deactivates piston to drop player
execute if score fake! temp matches 1 run fill 278 26 2235 278 26 2235 stone replace redstone_block
# turns off redstone lamp
execute if score fake! temp matches 1 run fill 278 24 2238 278 24 2238 nether_bricks replace redstone_block
# quickly switches off the button so the lamp turns off immediately
execute if score fake! temp matches 1 run fill 278 25 2239 278 25 2239 minecraft:stone_button[face=wall,facing=south,powered=false]
# turns off cell clock
execute if score fake! temp matches 1 run scoreboard players reset fake10! TCrandom
# sends player to the correct team
execute if score fake! temp matches 1 run scoreboard players set @a[scores={TCrandom=10}] TCrandom 20
execute if score fake! temp matches 1 run execute if score fakeTC! TCrandom matches 1 run function nail:tc_system/tc_system_tc1_selection
execute if score fake! temp matches 1 run execute if score fakeTC! TCrandom matches 2 run function nail:tc_system/tc_system_tc2_selection

scoreboard objectives remove temp