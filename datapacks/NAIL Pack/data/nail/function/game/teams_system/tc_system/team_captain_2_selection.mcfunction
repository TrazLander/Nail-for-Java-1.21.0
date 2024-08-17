# TC2 selects a player
tellraw @a ["",{"selector":"@a[scores={TCrandom=2}]","color":"dark_green"},{"text":" - ","color":"white"},{"selector":"@a[scores={TCrandom=20}]","color":"dark_green"}]
scoreboard players set @a[scores={TCrandom=20}] TCrandom 22
tp @a[scores={TCrandom=2}] 272 26 2247 180 0
# closes TC2's gate
fill 272 23 2245 272 23 2245 redstone_block replace stone
# removes current team captain
scoreboard players reset fakeTC! TCrandom


# if there's still players in cells:
# open TC1's gate
execute if entity @a[scores={TCrandom=3..16}] run fill 264 23 2245 264 23 2245 stone replace redstone_block
# set current captain to TC1
execute if entity @a[scores={TCrandom=3..16}] run scoreboard players set fakeTC! TCrandom 1

# if there's no more players in cells:
# open lane selection
execute unless entity @a[scores={TCrandom=3..16}] run fill 271 24 2251 273 29 2251 stone replace redstone_block
# face TC2 to the lane selection
execute unless entity @a[scores={TCrandom=3..16}] run tp @a[scores={TCrandom=2}] 272 26 2247 0 0