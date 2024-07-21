scoreboard players remove Tick! T2StartTimer 1
execute if score Tick! T2StartTimer matches 0 run scoreboard players remove Second1! T2StartTimer 1

# fill t1 trough floor with barrier blocks and kill any who managed to stay if even possible
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 54 run fill -3 211 48 2 211 48 minecraft:barrier
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 54 run fill 183 51 2165 183 51 2165 minecraft:redstone_block

# turn on trough kill
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 54 run scoreboard players set fake! TroughKill 1

# click click click
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 0..4 run playsound item.flintandsteel.use master @a[scores={Teams=2..}] ~ ~ ~ 1 .5 1
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 0..4 run playsound item.flintandsteel.use master @a[scores={Teams=..0}] ~ ~ ~ 1 .5 1

# lamps
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 4 run fill 2 215 47 2 215 47 minecraft:stone_bricks
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 3 run fill 1 215 47 1 215 47 minecraft:stone_bricks
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 2 run fill 0 215 47 0 215 47 minecraft:stone_bricks
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 1 run fill -1 215 47 -1 215 47 minecraft:stone_bricks
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches 0 run fill -2 215 47 -2 215 47 minecraft:stone_bricks
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches -1 run fill -3 215 47 -3 215 47 minecraft:stone_bricks

# t2 start
execute if score Tick! T2StartTimer matches 0 run execute if score Second1! T2StartTimer matches -1 run function nail:ready/t2_start

execute if score Tick! T2StartTimer matches 0 run scoreboard players set Tick! T2StartTimer 20