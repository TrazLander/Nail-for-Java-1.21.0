execute if entity @p[x=231,y=356,z=38,dx=0,dy=0,dz=0] run scoreboard objectives add Cannon1 dummy
scoreboard players add fake! Cannon1 1
execute if score fake! Cannon1 matches 1 run place template nail:cannons/cannon_1 228 356 38
execute if score fake! Cannon1 matches 1 run kill @e[x=228,y=356,z=38,dx=10,dy=5,dz=10,type=tnt]