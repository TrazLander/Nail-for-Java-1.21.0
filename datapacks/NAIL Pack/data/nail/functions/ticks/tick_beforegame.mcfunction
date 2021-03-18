# send flying trough people back into trough
scoreboard players set @a[x=-3,y=212,z=46,dx=6,dy=2,dz=0,gamemode=spectator,scores={Teams=1}] Teams 11
scoreboard players set @a[x=-3,y=212,z=48,dx=6,dy=2,dz=0,gamemode=spectator,scores={Teams=2}] Teams 12

# Trough out tps, potential command for BEDROCK VERSION
#scoreboard players set @a[x=4,y=213,z=48,r=1,gamemode=!spectator] Teams -12
#scoreboard players set @a[x=4,y=213,z=46,r=1,gamemode=!spectator] Teams -12

execute as @a[scores={Teams=1..}] run scoreboard players add fake! Math 1
scoreboard players operation §6Players: GameStart = fake! Math
scoreboard players reset * Math


execute if score t1lever levers matches 0 run execute if block -3 213 48 minecraft:lever[powered=true] run function nail:ready/t1_ready
execute if score t1lever levers matches 1 run execute unless block -3 213 48 minecraft:lever[powered=true] run function nail:ready/t1_unready

execute if score t2lever levers matches 0 run execute if block -3 213 46 minecraft:lever[powered=true] run function nail:ready/t2_ready
execute if score t2lever levers matches 1 run execute unless block -3 213 46 minecraft:lever[powered=true] run function nail:ready/t2_unready

execute if score Tick! T1StartTimer matches -1.. run function nail:ready/t1_countdown