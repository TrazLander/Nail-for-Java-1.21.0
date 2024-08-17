clear @a[scores={Teams=11}]
effect clear @a[scores={Teams=11}]
xp set @a[scores={Teams=11}] 0 levels
xp set @a[scores={Teams=11}] 0 points
effect give @a[scores={Teams=11}] minecraft:instant_health 2 10 true
effect give @a[scores={Teams=11}] minecraft:resistance 2 5 true

execute if score fake! gamestatus matches 1 run effect give @a[scores={Teams=11}] minecraft:saturation 1000000 255 true
execute if score fake! gamestatus matches 2 run effect give @a[scores={Teams=11}] minecraft:saturation 1 255 true
execute if score fake! gamestatus matches 3 run effect give @a[scores={Teams=11}] minecraft:saturation 1000000 255 true

execute if score fake! gamestatus matches 1 run spawnpoint @a[scores={Teams=11}] 0 212 48
execute if score fake! gamestatus matches 2 run spawnpoint @a[scores={Teams=11}] 0 218 429
execute if score fake! gamestatus matches 3 run spawnpoint @a[scores={Teams=11}] 0 212 48

execute if score fake! gamestatus matches 1 run tp @a[scores={Teams=11}] 0.0 212 48 0 0
execute if score fake! gamestatus matches 2 run tp @a[scores={Teams=11}] 0.0 218 429 180 0
execute if score fake! gamestatus matches 3 run tp @a[scores={Teams=11}] 0.0 212 48 0 0

execute if score fake! gamestatus matches 1 run gamemode adventure @a[scores={Teams=11}]
execute if score fake! gamestatus matches 2 run gamemode survival @a[scores={Teams=11}]
execute if score fake! gamestatus matches 3 run gamemode adventure @a[scores={Teams=11}]

execute if score fake! gamestatus matches 2 run tellraw @a ["",{"selector":"@a[scores={Teams=11}]","color":"dark_aqua"},{"text":" has joined the Defenders","color":"dark_aqua"}]

scoreboard players set @a[scores={Teams=11}] Teams 1