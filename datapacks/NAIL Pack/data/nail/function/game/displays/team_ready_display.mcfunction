# T1 Ready Display - ticking
scoreboard objectives add temp dummy
execute as @a[scores={Teams=1}] run scoreboard players add fake! temp 1
execute if block -3 213 48 minecraft:lever[face=wall,facing=east,powered=false] run scoreboard players reset §1Defenders§f-§2Ready GameStart
execute if block -3 213 48 minecraft:lever[face=wall,facing=east,powered=false] run scoreboard players operation §1Defenders§f-§cUnready GameStart = fake! temp
execute if block -3 213 48 minecraft:lever[face=wall,facing=east,powered=true] run scoreboard players reset §1Defenders§f-§cUnready GameStart
execute if block -3 213 48 minecraft:lever[face=wall,facing=east,powered=true] run scoreboard players operation §1Defenders§f-§2Ready GameStart = fake! temp
scoreboard objectives remove temp

# T2 Ready Display - ticking
scoreboard objectives add temp dummy
execute as @a[scores={Teams=2}] run scoreboard players add fake! temp 1
execute if block -3 213 46 minecraft:lever[face=wall,facing=east,powered=false] run scoreboard players reset §4Invaders§f-§2Ready GameStart
execute if block -3 213 46 minecraft:lever[face=wall,facing=east,powered=false] run scoreboard players operation 4Invaders§f-§cUnready GameStart = fake! temp
execute if block -3 213 46 minecraft:lever[face=wall,facing=east,powered=true] run scoreboard players reset 4Invaders§f-§cUnready GameStart
execute if block -3 213 46 minecraft:lever[face=wall,facing=east,powered=true] run scoreboard players operation §4Invaders§f-§2Ready GameStart = fake! temp
scoreboard objectives remove temp