execute as @p[x=-1,y=219,z=435,dx=1,dy=2,dz=0,scores={Teams=1}] run tellraw @a ["",{"selector":"@a[x=-1,y=219,z=435,dx=1,dy=2,dz=0,scores={Teams=1}]","color":"dark_aqua"},{"text":" has left the Defenders","color":"dark_aqua"}]
execute as @p[x=-1,y=208,z=30,dx=1,dy=2,dz=1,scores={Teams=2}] run tellraw @a ["",{"selector":"@a[x=-1,y=208,z=30,dx=1,dy=2,dz=1,scores={Teams=2}]","color":"dark_red"},{"text":" has left the Invaders","color":"dark_red"}]

scoreboard players set @a[x=-1,y=219,z=435,dx=1,dy=2,dz=0,scores={Teams=1..2}] Teams -11
scoreboard players set @a[x=-1,y=208,z=30,dx=1,dy=2,dz=1,scores={Teams=1..2}] Teams -11

execute as @p[scores={Teams=-11}] run function nail:player/spectate