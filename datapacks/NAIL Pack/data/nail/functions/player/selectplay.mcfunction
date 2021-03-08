scoreboard objectives add temp dummy
scoreboard players set @a[scores={Teams=21}] temp 2
scoreboard players operation @a[scores={temp=2}] temp = fake! MapMode
clear @a[scores={temp=1..3}]
effect clear @a[scores={temp=1..3}]
xp set @a[scores={temp=1..3}] 0 levels
xp set @a[scores={temp=1..3}] 0 points
effect give @a[scores={temp=1..3}] minecraft:saturation 1 255 true
effect give @a[scores={temp=1..3}] minecraft:instant_health 2 10 true
effect give @a[scores={temp=1..3}] minecraft:resistance 2 5 true
spawnpoint @a[scores={temp=1..3}] 0 212 0 0
gamemode adventure @a[scores={temp=1..2}]
gamemode adventure @a[scores={temp=3}]
tp @a[scores={temp=1..2}] 0.0 212 0 0 0
tp @a[scores={temp=3}] 0.0 217 0 0 0
scoreboard players set @a[scores={temp=1..3}] Teams 20
team leave @a[scores={temp=1..3}]
scoreboard objectives remove temp