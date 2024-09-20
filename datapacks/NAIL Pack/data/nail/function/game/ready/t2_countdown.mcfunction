scoreboard players remove Tick! T2StartTimer 1
execute if score Tick! T2StartTimer matches 0 run scoreboard players remove Second1! T2StartTimer 1

# fill t1 trough floor with barrier blocks and 
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 54 run fill 197 355 98 202 355 98 minecraft:barrier
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 54 run fill 183 51 2165 183 51 2165 minecraft:redstone_block

# kill any who managed to stay in trough from team 1 if even possible
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 54 run scoreboard players set fake! TroughKill 1

# click click click
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 0..4 run playsound item.flintandsteel.use master @a[scores={Teams=2..}] ~ ~ ~ 1 .5 1
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 0..4 run playsound item.flintandsteel.use master @a[scores={Teams=..0}] ~ ~ ~ 1 .5 1

# lamps
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 4 run fill 202 359 97 202 359 97 minecraft:stone_bricks
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 3 run fill 201 359 97 201 359 97 minecraft:stone_bricks
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 2 run fill 200 359 97 200 359 97 minecraft:stone_bricks
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 1 run fill 199 359 97 199 359 97 minecraft:stone_bricks
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 0 run fill 198 359 97 198 359 97 minecraft:stone_bricks
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches -1 run fill 197 359 97 197 359 97 minecraft:stone_bricks

# t2 start
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches -1 run function nail:game/ready/t2_start

execute if score Tick! T2StartTimer matches 0 run scoreboard players set Tick! T2StartTimer 20