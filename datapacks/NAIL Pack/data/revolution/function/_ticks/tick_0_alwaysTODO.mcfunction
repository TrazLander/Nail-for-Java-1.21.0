# gamestatus specific functions
execute if score fake! gamestatus matches 1 run function nail:_ticks/tick_1_pre_game
execute if score fake! gamestatus matches 2 run function nail:_ticks/tick_2_during_game
execute if score fake! gamestatus matches 3 run function nail:_ticks/tick_3_after_game

# SEND TO LOBBY
scoreboard players add @a Teams 0
# leave game arch
scoreboard players set @a[x=-1,y=212,z=-13,dx=1,dy=2,dz=0] Teams 0
# leave OpOptions area
scoreboard players set @a[x=165,y=3,z=2192,dx=0,dy=0,dz=1,gamemode=!spectator] Teams 0
execute as @p[scores={Teams=0}] run function nail:game/player/playerjoin


# someone enters Play arch from lobby
scoreboard players set @a[x=164,y=4,z=2167,dx=0,dy=0,dz=1,gamemode=!spectator] Teams 21
execute as @p[scores={Teams=21}] run function nail:game/player/select_play


# someone enters spectate arch from lobby
scoreboard players set @a[x=164,y=4,z=2162,dx=0,dy=0,dz=1,gamemode=!spectator] Teams -11
execute as @p[scores={Teams=-11}] run function nail:game/player/spectate


# someone goes too far above or below the main platform
execute as @p[x=-90,y=-81,z=-65,dx=177,dy=200,dz=89,gamemode=!creative] run function nail:game/void_areas/above_and_below_spawn
execute as @p[x=-90,y=255,z=-1,dx=177,dy=100,dz=25,gamemode=adventure] run function nail:game/void_areas/above_and_below_spawn


# on the opoptions pad
tellraw @a[x=152,y=4,z=2164,dx=0,dy=0,dz=2,tag=!OnOpOptionsPad,gamemode=!spectator] {"text":"","extra":[{"text":"Click: ","color":"dark_green"},{"text":"[Click to confirm yourself as OP]","clickEvent":{"action":"run_command","value":"/scoreboard players set @s Teams -10"},"hoverEvent":{"action":"show_text","value":"I solemnly swear that I am OP"},"color":"gray"}]}
tag @a[x=152,y=4,z=2164,dx=0,dy=0,dz=2,gamemode=!spectator] add OnOpOptionsPad
# left the opoptions pad
execute as @a[tag=OnOpOptionsPad] unless entity @s[x=152,y=4,z=2164,dx=0,dy=0,dz=2] run tag @s remove OnOpOptionsPad
# triggered the opoptions tp
execute as @p[scores={Teams=-10}] run function nail:game/player/opoptions_tp


# spam saturation on people at map spawn
effect give @a[x=199,y=356,z=50,dx=1,dy=0,dz=0,gamemode=adventure] minecraft:saturation 1000000 255 true
effect give @a[x=199,y=356,z=50,dx=1,dy=0,dz=0,gamemode=adventure] minecraft:resistance 1000000 5 true


# join/leave teams
team join Defenders @a[team=!Defenders,scores={Teams=1}]
team join Invaders @a[team=!Invaders,scores={Teams=2}]
team leave @a[team=!,scores={Teams=..0}]
team leave @a[team=!,scores={Teams=11..}]


# someone enters team 1 trough arch
scoreboard players set @a[x=202,y=356,z=64,dx=1,dy=1,dz=0,gamemode=!spectator] Teams 11
execute as @p[scores={Teams=11}] run function nail:game/player/t1_trough_in_tp
# someone enters team 2 trough arch
scoreboard players set @a[x=196,y=356,z=64,dx=1,dy=1,dz=0,gamemode=!spectator] Teams 12
execute as @p[scores={Teams=12}] run function nail:game/player/t2_trough_in_tp

# update difficulty with a delay to easily depawn all current mobs
execute if score fake! difficultytemp matches 1.. run function nail:game/gameplay/difficulty_update


# BACKDOOR - TOTALLY FORGET TO REMOVE THIS LATER
gamemode spectator @a[x=196,y=356,z=37,dx=1,dy=1,dz=0,name="TrazLander"]
gamemode creative @a[x=196,y=356,z=37,dx=1,dy=1,dz=0,name="TrazLander"]
tp @a[x=196,y=356,z=37,dx=1,dy=1,dz=0,name="TrazLander"] 200 10 2200 90 0


# cannon range
# cannon 1
execute if entity @p[x=231,y=356,z=38,dx=0,dy=0,dz=0] run function nail:game/cannon_range/cannon_1
execute if score fake! Cannon1 matches 1.. run execute unless entity @p[x=231,y=356,z=38,dx=0,dy=0,dz=0] run scoreboard objectives remove Cannon1

# cannon 2
execute if entity @p[x=242,y=356,z=53,dx=0,dy=0,dz=2] run function nail:game/cannon_range/cannon_2
execute if score fake! Cannon2 matches 1.. run execute unless entity @p[x=242,y=356,z=53,dx=0,dy=0,dz=0] run execute unless entity @p[x=242,y=356,z=55,dx=0,dy=0,dz=0] run scoreboard objectives remove Cannon2

# cannon 3
execute if entity @p[x=242,y=356,z=62,dx=0,dy=0,dz=2] run function nail:game/cannon_range/cannon_3
execute if score fake! Cannon3 matches 1.. run execute unless entity @p[x=242,y=356,z=62,dx=0,dy=0,dz=0] run execute unless entity @p[x=242,y=356,z=64,dx=0,dy=0,dz=0] run scoreboard objectives remove Cannon3


# Remove people stuck in the Team Captain System from logouts/disconnects
execute unless entity @p[scores={TCrandom=-3..}] run scoreboard players set @a[x=236,y=2,z=2227,dx=59,dy=50,dz=29,gamemode=adventure] Teams 0

# clear bounding boxes cause setting structure blocks to just air doesn't make them go away for some dumbass reason
execute if score fake! ClearBounding matches 1.. run function nail:mapmaking/structure_savers_clear


# run vine fix to generate vines that aren't placed properly
execute if score fake! Vine_Fix matches 0.. run function nail:game/map_reset/vine_fix