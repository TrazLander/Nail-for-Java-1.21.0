execute if entity @p[x=242,y=356,z=53,dx=0,dy=0,dz=0] run scoreboard objectives add Cannon2 dummy
execute if entity @p[x=242,y=356,z=55,dx=0,dy=0,dz=0] run scoreboard objectives add Cannon2 dummy
scoreboard players add fake! Cannon2 1
# 2-charge whiskey cannon
execute if score fake! Cannon2 matches 1 run execute if entity @p[x=242,y=356,z=53,dx=0,dy=0,dz=0] run place template nail:cannons/cannon_2a 228 356 50
# 3-charge whiskey cannon
execute if score fake! Cannon2 matches 1 run execute if entity @p[x=242,y=356,z=55,dx=0,dy=0,dz=0] run place template nail:cannons/cannon_2b 228 356 50
execute if score fake! Cannon2 matches 1 run kill @e[x=228,y=356,z=50,dx=14,dy=5,dz=6,type=tnt]