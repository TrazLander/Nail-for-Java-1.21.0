# Playing Display - shows how many players are playing before the game starts
scoreboard objectives add temp dummy
scoreboard players set fake! temp 0
execute as @a[scores={Teams=1..}] run scoreboard players add fake! temp 1
scoreboard players operation §6Players: GameStart = fake! temp
scoreboard objectives remove temp

# clear player handicap
scoreboard players set @p DefenderHandicap 0
scoreboard players operation @p[scores={DefenderHandicap=0}] DefenderHandicap = fake! DefenderHandicap
execute as @p[scores={DefenderHandicap=0}] time set 12000d
execute as @p[scores={DefenderHandicap=1}] time set 10800d
scoreboard players reset @a DefenderHandicap
difficulty hard

# send flying trough people back into trough
scoreboard players set @a[x=-3,y=212,z=46,dx=6,dy=2,dz=0,gamemode=spectator,scores={Teams=1}] Teams 11
scoreboard players set @a[x=-3,y=212,z=48,dx=6,dy=2,dz=0,gamemode=spectator,scores={Teams=2}] Teams 12

# Trough out tps, potential command for BEDROCK VERSION
#scoreboard players set @a[x=4,y=213,z=48,r=1,gamemode=!spectator] Teams -12
#scoreboard players set @a[x=4,y=213,z=46,r=1,gamemode=!spectator] Teams -12

execute as @a[scores={Teams=1..}] run scoreboard players add fake! Math 1
scoreboard players operation §6Players: GameStart = fake! Math
scoreboard players reset * Math


execute if score fake! MapMode matches 1..2 run execute if score t1lever levers matches 0 run execute if block -3 213 48 minecraft:lever[powered=true] run function nail:ready/t1_ready
execute if score fake! MapMode matches 1..2 run execute if score t1lever levers matches 1 run execute unless block -3 213 48 minecraft:lever[powered=true] run function nail:ready/t1_unready

execute if score fake! MapMode matches 1..2 run execute if score t2lever levers matches 0 run execute if block -3 213 46 minecraft:lever[powered=true] run function nail:ready/t2_ready
execute if score fake! MapMode matches 1..2 run execute if score t2lever levers matches 1 run execute unless block -3 213 46 minecraft:lever[powered=true] run function nail:ready/t2_unready

execute if score Tick! T1StartTimer matches -1.. run function nail:ready/t1_countdown

# MapMode 3 Automatic Mode - Minimum Players display
execute if score fake! MapMode matches 3 run function nail:displays/minimum_players