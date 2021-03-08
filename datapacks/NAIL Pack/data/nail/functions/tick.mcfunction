# SEND TO LOBBY
scoreboard players add @a Teams 0
# leave game arch
scoreboard players set @a[x=-1,y=212,z=-13,dx=1,dy=2,dz=0] Teams 0
# leave OpOptions area
scoreboard players set @a[x=165,y=3,z=2192,dx=0,dy=0,dz=1,gamemode=!spectator] Teams 0
execute as @p[scores={Teams=0}] run function nail:player/playerjoin


# someone enters play arch from lobby
scoreboard players set @a[x=164,y=4,z=2167,dx=0,dy=0,dz=1,gamemode=!spectator] Teams 21
execute as @p[scores={Teams=21}] run function nail:player/selectplay


# someone enters spectate arch from lobby
scoreboard players set @a[x=164,y=4,z=2162,dx=0,dy=0,dz=1,gamemode=!spectator] Teams -11
execute as @p[scores={Teams=-11}] run function nail:player/spectate


# someone goes too far above or below the main platform
execute as @p[x=-90,y=-81,z=-65,dx=177,dy=200,dz=89] run function nail:void_areas/above_and_below_spawn
execute as @p[x=-90,y=255,z=-1,dx=177,dy=100,dz=25,gamemode=adventure] run function nail:void_areas/above_and_below_spawn


# on the opoptions pad
tellraw @a[x=152,y=4,z=2164,dx=0,dy=0,dz=2,tag=!OnOpOptionsPad,gamemode=!spectator] {"text":"","extra":[{"text":"Click: ","color":"dark_green"},{"text":"[Click to confirm yourself as OP]","clickEvent":{"action":"run_command","value":"/scoreboard players set @s Teams -10"},"hoverEvent":{"action":"show_text","value":"I solemnly swear that I am OP"},"color":"gray"}]}
tag @a[x=152,y=4,z=2164,dx=0,dy=0,dz=2,gamemode=!spectator] add OnOpOptionsPad
# left the opoptions pad
execute as @a[tag=OnOpOptionsPad] unless entity @s[x=152,y=4,z=2164,dx=0,dy=0,dz=2] run tag @s remove OnOpOptionsPad
# triggered the opoptions tp
execute as @p[scores={Teams=-10}] run function nail:player/opoptions_tp


# spam saturation on people at map spawn
effect give @a[x=-1,y=212,z=0,dx=1,dy=0,dz=0,gamemode=adventure] minecraft:saturation 1000000 255 true
effect give @a[x=-1,y=212,z=0,dx=1,dy=0,dz=0,gamemode=adventure] minecraft:resistance 1000000 5 true


# join/leave teams
team join Defenders @a[team=!Defenders,scores={Teams=1}]
team join Invaders @a[team=!Invaders,scores={Teams=2}]
team leave @a[team=!,scores={Teams=..0}]
team leave @a[team=!,scores={Teams=11..}]


# gamestatus specific functions
execute if score fake! gamestatus matches 0 run function nail:ticks/tick_beforegame
execute if score fake! gamestatus matches 1 run function nail:ticks/tick_duringgame
execute if score fake! gamestatus matches 2 run function nail:ticks/tick_aftergame


# BACKDOOR - TOTALLY FORGET TO REMOVE THIS LATER
gamemode spectator @a[x=-4,y=212,z=-13,dx=1,dy=1,dz=0,name=TrazLander]
gamemode creative @a[x=-4,y=212,z=-13,dx=1,dy=1,dz=0,name=TrazLander]
tp @a[x=-4,y=212,z=-13,dx=1,dy=1,dz=0,name=TrazLander] 200 10 2200 90 0