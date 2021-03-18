scoreboard players remove Tick! T1StartTimer 1
execute if score Tick! T1StartTimer matches 0 run scoreboard players remove Second1! T1StartTimer 1
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches 0..4 run playsound item.flintandsteel.use master @a ~ ~ ~ 1 .5 1
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches 4 run fill -3 215 47 -3 215 47 redstone_block
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches 3 run fill -2 215 47 -2 215 47 redstone_block
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches 2 run fill -1 215 47 -1 215 47 redstone_block
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches 1 run fill 0 215 47 0 215 47 redstone_block
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches 0 run fill 1 215 47 1 215 47 redstone_block
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches -1 run fill 2 215 47 2 215 47 redstone_block

# T1 Start
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches -1 run function nail:ready/t1_start

# remove T1StartTimer
execute if score Tick! T1StartTimer matches 0 run execute if score Second1! T1StartTimer matches -1 run scoreboard objectives remove T1StartTimer

execute if score Tick! T1StartTimer matches 0 run scoreboard players set Tick! T1StartTimer 20
