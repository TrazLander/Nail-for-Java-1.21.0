#Sets Teams scoreboard
scoreboard objectives add Teams dummy
scoreboard players set @a[scores={Teams=..2}] Teams 0
scoreboard players set @a[scores={Teams=20}] Teams 21
scoreboard players set @a[scores={SwapSidesTemp=11}] Teams 11
scoreboard players set @a[scores={SwapSidesTemp=12}] Teams 12
scoreboard objectives remove SwapSidesTemp