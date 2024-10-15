scoreboard objectives add CurrentMap dummy
execute unless score fake! CurrentMap matches 1.. run scoreboard players set fake! CurrentMap 1

# set MapMode
# 1 = tournament, 2 = friendlies (default), 3 = automatic
scoreboard objectives add MapMode dummy
execute unless score fake! MapMode matches 1.. run scoreboard players set fake! MapMode 2

# set gamestatus to 1
scoreboard objectives add gamestatus dummy
execute unless score fake! gamestatus matches 1.. run function nail:_load/load_1_pre_game


say world reloaded