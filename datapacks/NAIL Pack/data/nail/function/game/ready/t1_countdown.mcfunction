scoreboard players remove Tick! T1StartTimer 1
execute if score Tick! T1StartTimer matches 0 run scoreboard players remove Second1! T1StartTimer 1

# click click click
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches 0..4 run playsound item.flintandsteel.use master @a ~ ~ ~ 1 .5 1

# lamps
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches 4 run fill 197 359 97 197 359 97 redstone_block
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches 3 run fill 198 359 97 198 359 97 redstone_block
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches 2 run fill 199 359 97 199 359 97 redstone_block
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches 1 run fill 200 359 97 200 359 97 redstone_block
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches 0 run fill 201 359 97 201 359 97 redstone_block
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches -1 run fill 202 359 97 202 359 97 redstone_block

# t1 start
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches -1 run function nail:game/ready/t1_start

execute if score Tick! T1StartTimer matches 0 run scoreboard players set Tick! T1StartTimer 20