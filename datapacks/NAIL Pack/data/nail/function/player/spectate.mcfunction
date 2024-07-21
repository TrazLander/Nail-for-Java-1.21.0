clear @a[scores={Teams=-11}]
effect clear @a[scores={Teams=-11}]
xp set @a[scores={Teams=-11}] 0 levels
xp set @a[scores={Teams=-11}] 0 points
effect give @a[scores={Teams=-11}] minecraft:saturation 1 255 true
effect give @a[scores={Teams=-11}] minecraft:instant_health 2 10 true
effect give @a[scores={Teams=-11}] minecraft:resistance 2 5 true
effect give @a[scores={Teams=-11}] minecraft:night_vision 1000000 0 true
spawnpoint @a[scores={Teams=-11}] 0 212 0
gamemode spectator @a[scores={Teams=-11}]
tp @a[scores={Teams=-11}] 0 217 0 0 0
tellraw @a[scores={Teams=-11}] {"text":"","extra":[{"text":"Enter \"Leave Game\" archway to exit spectator mode","color":"yellow"}]}
team leave @a[scores={Teams=-11}]
scoreboard players set @a[scores={Teams=-11}] Teams -1