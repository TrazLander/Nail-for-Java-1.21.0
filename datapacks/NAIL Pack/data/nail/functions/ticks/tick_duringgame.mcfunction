# Kill all animals and witches during game
execute as @e[type=#nail:undesirables] at @s run tp @s[y=0,dy=5000] ~ -2 ~

# spawn random enderman
scoreboard players remove Ticks0 Enderman 1
execute if score Ticks0 Enderman matches -1 run summon minecraft:enderman 2 202 94
execute if score Ticks0 Enderman matches -1 run scoreboard players set Ticks0 Enderman 3600

# leave team
execute if score fake! MapMode matches 2..3 run execute as @p[x=-1,y=219,z=435,dx=1,dy=2,dz=0,scores={Teams=1..2}] run function nail:player/leaveteam
execute if score fake! MapMode matches 2..3 run execute as @p[x=-1,y=208,z=30,dx=1,dy=2,dz=1,scores={Teams=1..2}] run function nail:player/leaveteam