clear @a[scores={Teams=12}]
effect clear @a[scores={Teams=12}]
xp set @a[scores={Teams=12}] 0 levels
xp set @a[scores={Teams=12}] 0 points
effect give @a[scores={Teams=12}] minecraft:instant_health 2 10 true
effect give @a[scores={Teams=12}] minecraft:resistance 2 5 true

execute if score fake! gamestatus matches 1 run effect give @a[scores={Teams=12}] minecraft:saturation 1000000 255 true
execute if score fake! gamestatus matches 2 run effect give @a[scores={Teams=12}] minecraft:saturation 1 255 true
execute if score fake! gamestatus matches 3 run effect give @a[scores={Teams=12}] minecraft:saturation 1000000 255 true

execute if score fake! gamestatus matches 1 run spawnpoint @a[scores={Teams=12}] 0 212 46
execute if score fake! gamestatus matches 2 run spawnpoint @a[scores={Teams=12}] 0 208 34
execute if score fake! gamestatus matches 3 run spawnpoint @a[scores={Teams=12}] 0 212 46

execute if score fake! gamestatus matches 1 run tp @a[scores={Teams=12}] 0.0 212 46 0 0
execute if score fake! gamestatus matches 2 run tp @a[scores={Teams=12}] 0.0 208 34 0 0
execute if score fake! gamestatus matches 3 run tp @a[scores={Teams=12}] 0.0 212 46 0 0

execute if score fake! gamestatus matches 1 run gamemode adventure @a[scores={Teams=12}]
execute if score fake! gamestatus matches 2 run gamemode survival @a[scores={Teams=12}]
execute if score fake! gamestatus matches 3 run gamemode adventure @a[scores={Teams=12}]

execute if score fake! gamestatus matches 2 run tellraw @a ["",{"selector":"@a[scores={Teams=12}]","color":"dark_red"},{"text":" has joined the Invaders","color":"dark_red"}]

scoreboard players set @a[scores={Teams=12}] Teams 2