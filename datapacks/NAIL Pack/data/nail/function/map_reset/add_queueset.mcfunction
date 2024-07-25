# everything below runs on world load
scoreboard objectives remove QueueSet
scoreboard players operation @p MapMode = fake! MapMode
execute @p[scores={MapMode=3}] ~ ~ ~ scoreboard objectives add QueueSet dummy
scoreboard players reset @a MapMode