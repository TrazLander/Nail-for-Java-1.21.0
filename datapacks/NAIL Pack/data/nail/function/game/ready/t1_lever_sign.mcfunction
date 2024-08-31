scoreboard objectives add temp dummy

# check current lever state
execute if block ~ ~-1 ~ minecraft:lever[face=wall,facing=east,powered=true] run scoreboard players set fake! temp 1
execute if block ~ ~-1 ~ minecraft:lever[face=wall,facing=east,powered=false] run scoreboard players set fake! temp 2

# power off lever
execute if score fake! temp matches 1 run setblock ~ ~-1 ~ minecraft:lever[face=wall,facing=east,powered=false] replace
execute if score fake! temp matches 1 run playsound minecraft:block.lever.click block @a ~ ~-1 ~ 0.3 0.5

# power on lever
execute if score fake! temp matches 2 run setblock ~ ~-1 ~ minecraft:lever[face=wall,facing=east,powered=true] replace
execute if score fake! temp matches 2 run playsound minecraft:block.lever.click block @a ~ ~-1 ~ 0.3 0.6

scoreboard objectives remove temp