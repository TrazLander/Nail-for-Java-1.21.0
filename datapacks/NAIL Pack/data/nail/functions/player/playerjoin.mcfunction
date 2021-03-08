gamemode spectator @a[scores={Teams=0}]
gamemode adventure @a[scores={Teams=0}]
clear @a[scores={Teams=0}]
effect clear @a[scores={Teams=0}]
xp set @a[scores={Teams=0}] 0 levels
xp set @a[scores={Teams=0}] 0 points
effect give @a[scores={Teams=0}] minecraft:saturation 1000000 255 true
effect give @a[scores={Teams=0}] minecraft:instant_health 2 10 true
effect give @a[scores={Teams=0}] minecraft:resistance 100000 5 true
effect give @a[scores={Teams=0}] minecraft:weakness 100000 5 true
spawnpoint @a[scores={Teams=0}] 157 2 2165 -90
#execute @p[scores={Teams=0}] ~ ~ ~ function nail:specificplayers

#tp only if not in entry
scoreboard objectives add temp dummy
scoreboard players set @a temp 0
scoreboard players set @a[x=153,y=2,z=2161,dx=11,dy=4,dz=8] temp 1
tp @a[scores={Teams=0,temp=0}] 157 2 2165 -90 0
scoreboard objectives remove temp

scoreboard players set @a[scores={Teams=0}] Teams -3