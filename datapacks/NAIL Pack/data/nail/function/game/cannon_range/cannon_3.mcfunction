execute if entity @p[x=242,y=356,z=62,dx=0,dy=0,dz=0] run scoreboard objectives add Cannon3 dummy
execute if entity @p[x=242,y=356,z=64,dx=0,dy=0,dz=0] run scoreboard objectives add Cannon3 dummy
scoreboard players add fake! Cannon3 1
# 4-charge cannon
execute if score fake! Cannon3 matches 1 run execute if entity @p[x=242,y=356,z=62,dx=0,dy=0,dz=0] run place template nail:cannons/cannon_3a 228 356 58
# 5-charge cannon
execute if score fake! Cannon3 matches 1 run execute if entity @p[x=242,y=356,z=64,dx=0,dy=0,dz=0] run place template nail:cannons/cannon_3b 228 356 58
execute if score fake! Cannon3 matches 1 run kill @e[x=228,y=356,z=58,dx=14,dy=5,dz=7,type=tnt]