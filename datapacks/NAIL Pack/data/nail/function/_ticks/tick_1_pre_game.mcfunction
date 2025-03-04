# Playing Display - shows how many players are playing before the game starts
scoreboard objectives add temp dummy
execute as @a[scores={Teams=1..}] run scoreboard players add fake! temp 1
scoreboard players operation §6Players: GameStart = fake! temp
scoreboard objectives remove temp

# send flying trough people back into trough
scoreboard players set @a[x=197,y=356,z=96,dx=6,dy=2,dz=0,gamemode=spectator,scores={Teams=1}] Teams 11
scoreboard players set @a[x=197,y=356,z=98,dx=6,dy=2,dz=0,gamemode=spectator,scores={Teams=2}] Teams 12

# Trough out tps, potential command for BEDROCK VERSION
#scoreboard players set @a[x=204,y=357,z=98,r=1,gamemode=!spectator] Teams -12
#scoreboard players set @a[x=204,y=357,z=96,r=1,gamemode=!spectator] Teams -12

execute if score fake! MapMode matches 1..2 run execute unless score t1lever levers matches 1 run execute if block 197 357 98 minecraft:lever[powered=true] run function nail:game/ready/t1_ready
execute if score fake! MapMode matches 1..2 run execute if score t1lever levers matches 1 run execute unless block 197 357 98 minecraft:lever[powered=true] run function nail:game/ready/t1_unready

execute if score fake! MapMode matches 1..2 run execute unless score t2lever levers matches 1 run execute if block 197 357 96 minecraft:lever[powered=true] run function nail:game/ready/t2_ready
execute if score fake! MapMode matches 1..2 run execute if score t2lever levers matches 1 run execute unless block 197 357 96 minecraft:lever[powered=true] run function nail:game/ready/t2_unready

execute if score Tick! T1StartTimer matches -1.. run function nail:game/ready/t1_countdown

# MapMode 3 Automatic Mode - Minimum Players display
execute if score fake! MapMode matches 3 run function nail:game/displays/minimum_players



# Queue system
execute if score fake! QueueTeamsReady matches 1 run function nail:game/queue/queue_add_to_teams


# specific player check
execute if entity @p[tag=!SpecificChecked] run function nail:game/player/specific_player_check

# Teams System
# Team Captain System
execute if entity @p[scores={TCrandom=-3..}] run function nail:game/teams_system/tc_system/tick
# random team button pressed
execute if block 197 357 68 minecraft:stone_button[powered=true] run function nail:game/teams_system/teams_system_load
# team captain system button pressed
execute if block 203 358 68 minecraft:stone_button[powered=true] run function nail:game/teams_system/teams_system_load