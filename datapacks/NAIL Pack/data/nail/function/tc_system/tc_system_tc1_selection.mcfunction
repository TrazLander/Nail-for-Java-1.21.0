# TC1 selects a player
tellraw @a ["",{"selector":"@a[scores={TCrandom=1}]","color":"light_purple"},{"text":" - ","color":"white"},{"selector":"@a[scores={TCrandom=20}]","color":"light_purple"}]
scoreboard players set @a[scores={TCrandom=20}] TCrandom 21
tp @a[scores={TCrandom=1}] 264 26 2247 180 0
# closes TC1's gate
fill 264 23 2245 264 23 2245 redstone_block replace stone
# removes current team captain
scoreboard players reset fakeTC! TCrandom


# if there's still players in cells:
# open TC2's gate
execute if entity @a[scores={TCrandom=3..16}] run fill 272 23 2245 272 23 2245 stone replace redstone_block
# set current captain to TC2
execute if entity @a[scores={TCrandom=3..16}] run scoreboard players set fakeTC! TCrandom 2

# if there's no more players in cells:
# open lane selection
execute unless entity @a[scores={TCrandom=3..16}] run fill 271 24 2251 273 29 2251 stone replace redstone_block
# face TC2 to the lane selection
execute unless entity @a[scores={TCrandom=3..16}] run tp @a[scores={TCrandom=2}] 272 26 2247 0 0