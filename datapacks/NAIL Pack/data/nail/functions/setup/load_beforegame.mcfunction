#Sets Teams scoreboard
scoreboard objectives add Teams dummy
scoreboard players set @a[scores={Teams=..2}] Teams 0
scoreboard players set @a[scores={Teams=20}] Teams 21
scoreboard players set @a[scores={SwapSidesTemp=11}] Teams 11
scoreboard players set @a[scores={SwapSidesTemp=12}] Teams 12
scoreboard objectives remove SwapSidesTemp

scoreboard objectives remove Enderman

scoreboard objectives remove Math
scoreboard objectives add Math dummy

scoreboard objectives remove GameStart
scoreboard objectives add GameStart dummy
scoreboard objectives setdisplay sidebar GameStart


scoreboard objectives remove levers
execute if score fake! MapMode matches 1..2 run scoreboard objectives add levers dummy
scoreboard objectives remove ReadyDisplay
scoreboard objectives remove ReadyDisplay2
execute if score fake! MapMode matches 1..2 run scoreboard objectives add ReadyDisplay dummy
execute if score fake! MapMode matches 1..2 run scoreboard objectives add ReadyDisplay2 dummy
