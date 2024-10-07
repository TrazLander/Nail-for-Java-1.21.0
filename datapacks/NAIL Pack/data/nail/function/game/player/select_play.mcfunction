clear @a[scores={Teams=21}]
effect clear @a[scores={Teams=21}]
xp set @a[scores={Teams=21}] 0 levels
xp set @a[scores={Teams=21}] 0 points
effect give @a[scores={Teams=21}] minecraft:saturation 1 255 true
effect give @a[scores={Teams=21}] minecraft:instant_health 2 10 true
effect give @a[scores={Teams=21}] minecraft:resistance 2 5 true
spawnpoint @a[scores={Teams=21}] 200 356 50 0
execute if score fake! MapMode matches 1..2 run gamemode adventure @a[scores={Teams=21}]
execute if score fake! MapMode matches 3 run gamemode spectator @a[scores={Teams=21}]
execute if score fake! MapMode matches 1..2 run tp @a[scores={Teams=21}] 200.0 356 50 0 0
execute if score fake! MapMode matches 3 run tp @a[scores={Teams=21}] 200.0 361 50 0 0
scoreboard players set @a[scores={Teams=21}] Teams 20
team leave @a[scores={Teams=21}]