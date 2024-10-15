# ops can't mode toggle while regenerating
execute if score fake! Regenerate matches 0.. run tellraw @a[gamemode=!spectator] {"text":"Gamemode may not be toggled while map is regenerating, please wait.","italic":true,"color":"red"}
execute if score fake! Regenerate matches 0.. run gamemode spectator @a[gamemode=!spectator]

scoreboard players add tick! Regenerate 1
execute if score tick! Regenerate matches 5 run function revolution:game/map_reset/regenerate_map