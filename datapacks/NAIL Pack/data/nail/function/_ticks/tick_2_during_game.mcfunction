# game clock
function nail:game/game_clock/game_clock

# Kill all animals and witches during game
execute as @e[type=#nail:undesirables] at @s run tp @s[y=0,dy=5000] ~ -2 ~

# spawn random enderman
scoreboard players remove Ticks0 Enderman 1
execute if score Ticks0 Enderman matches -1 run summon minecraft:enderman 2 202 94
execute if score Ticks0 Enderman matches -1 run scoreboard players set Ticks0 Enderman 3600

# leave team
execute if score fake! MapMode matches 2..3 run execute as @p[x=-1,y=219,z=435,dx=1,dy=2,dz=0,scores={Teams=1..2}] run function nail:game/player/leaveteam
execute if score fake! MapMode matches 2..3 run execute as @p[x=-1,y=208,z=30,dx=1,dy=2,dz=1,scores={Teams=1..2}] run function nail:game/player/leaveteam

execute if score Tick! T2StartTimer matches -1.. run function nail:game/ready/t2_countdown

# trough kill (error checking? I forget what this is for, TRY TO GO OVER IT AGAIN LATER)
execute if score fake! TroughKill matches 1 run scoreboard players add @a[x=-3,y=212,z=48,dx=6,dy=2,dz=0,gamemode=!spectator] Teams 0
execute if score fake! TroughKill matches 1 run kill @a[scores={Teams=0..1},gamemode=!spectator,dz=0,dx=6,dy=2,y=212,x=-3,z=48]
execute if score fake! TroughKill matches 1..2 run scoreboard players add @a[x=-3,y=212,z=46,dx=6,dy=2,dz=0,gamemode=!spectator] Teams 0
execute if score fake! TroughKill matches 1..2 run kill @a[scores={Teams=0},gamemode=!spectator,dz=0,dx=6,dy=2,y=212,x=-3,z=46]

# lane protection
scoreboard players set @a[gamemode=spectator,scores={Teams=1}] LaneProtection 0
scoreboard players set @a[gamemode=adventure,scores={Teams=1}] LaneProtection 0
scoreboard players set @a[scores={Teams=1},gamemode=spectator,dz=211,dx=39,dy=59,y=199,x=-20,z=31] LaneProtection 1
scoreboard players set @a[scores={Teams=1},gamemode=adventure,dz=211,dx=39,dy=59,y=199,x=-20,z=31] LaneProtection 1
scoreboard players set @a[scores={Teams=1},gamemode=spectator,dz=195,dx=39,dy=9,y=214,x=-20,z=241] LaneProtection 1
scoreboard players set @a[scores={Teams=1},gamemode=adventure,dz=195,dx=39,dy=9,y=214,x=-20,z=241] LaneProtection 1
scoreboard players set @a[scores={Teams=1},gamemode=spectator,dz=20,dx=12,dy=9,y=189,x=-17,z=110] LaneProtection 1
scoreboard players set @a[scores={Teams=1},gamemode=adventure,dz=20,dx=12,dy=9,y=189,x=-17,z=110] LaneProtection 1
effect give @a[scores={LaneProtection=0}] instant_damage 1000000 0 true
effect clear @a[scores={LaneProtection=1}] instant_damage
gamemode adventure @a[scores={LaneProtection=0}]
gamemode survival @a[scores={LaneProtection=1}]
scoreboard players reset * LaneProtection


scoreboard players set @a[gamemode=spectator,scores={Teams=1..2}] LaneProtection 0
scoreboard players set @a[gamemode=adventure,scores={Teams=1..2}] LaneProtection 0
scoreboard players set @a[scores={Teams=1..2},gamemode=spectator,dz=211,dx=39,dy=59,y=199,x=-20,z=31] LaneProtection 1
scoreboard players set @a[scores={Teams=1..2},gamemode=adventure,dz=211,dx=39,dy=59,y=199,x=-20,z=31] LaneProtection 1
scoreboard players set @a[scores={Teams=1..2},gamemode=spectator,dz=195,dx=39,dy=9,y=214,x=-20,z=241] LaneProtection 1
scoreboard players set @a[scores={Teams=1..2},gamemode=adventure,dz=195,dx=39,dy=9,y=214,x=-20,z=241] LaneProtection 1
scoreboard players set @a[scores={Teams=1..2},gamemode=spectator,dz=20,dx=12,dy=9,y=189,x=-17,z=110] LaneProtection 1
scoreboard players set @a[scores={Teams=1..2},gamemode=adventure,dz=20,dx=12,dy=9,y=189,x=-17,z=110] LaneProtection 1
effect give @a[scores={LaneProtection=0}] instant_damage 1000000 0 true
effect clear @a[scores={LaneProtection=1}] instant_damage
gamemode adventure @a[scores={LaneProtection=0}]
gamemode survival @a[scores={LaneProtection=1}]
scoreboard players reset * LaneProtection

# spawn protection

# tick - Team 1 Spawn Protection
tp @a[scores={Teams=2},dz=3,dx=37,dy=9,y=214,x=-19,z=241] ~ ~ ~-1 ~ ~
kill @e[x=-20,y=213,z=241,dx=39,dy=10,dz=195,type=#nail:spawn_protect_undesirables]


# tick - Team 2 Spawn Protection
tp @a[scores={Teams=1},dz=16,dx=39,dy=53,y=205,x=-20,z=31] ~ ~ ~1 ~ ~
fill -1 208 34 0 209 34 air
kill @e[x=-20,y=205,z=31,dx=39,dy=53,dz=16,type=#nail:spawn_protect_undesirables]

# speed to t1 on respawn
effect give @a[scores={Teams=1},dz=19,dx=7,dy=6,y=216,x=-4,z=414] saturation 1 50 true
effect give @a[scores={Teams=1},dz=19,dx=7,dy=6,y=216,x=-4,z=414] speed 25 1 true

# t2 victory check
execute unless block 0 225 226 minecraft:wet_sponge run execute unless block -1 225 226 minecraft:wet_sponge run function nail:game/gameplay/t2_victory
# t1 victory check
execute if score Mins2! TimerBoard matches ..0 run execute if score Mins1! TimerBoard matches ..0 run execute if score Secs2! TimerBoard matches ..0 run execute if score Secs1! TimerBoard matches ..0 run execute if score Ticks! TimerBoard matches ..0 run function nail:game/gameplay/t1_victory




# random team button pressed
execute if block -3 213 18 minecraft:stone_button[powered=true] run tellraw @a[x=0,y=213,z=18,distance=..5] [{"text":"You may not use Team Selection when a game has already started.","italic":true,"color":"red"}]
# team captain system button pressed
execute if block 3 214 18 minecraft:stone_button[powered=true] run tellraw @a[x=0,y=213,z=18,distance=..5] [{"text":"You may not use Team Selection when a game has already started.","italic":true,"color":"red"}]


# respawn rotate - no longer needed as of 1.16.2 since they added a rotation to /spawnpoint, but will be needed if map converts to bedrock
#function nail:game/respawn_rotate