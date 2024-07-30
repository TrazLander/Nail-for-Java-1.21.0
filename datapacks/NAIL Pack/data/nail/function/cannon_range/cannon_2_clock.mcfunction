scoreboard objectives add temp dummy
scoreboard players set @p temp 0
execute @p[x=42,y=212,z=3,dx=0,dy=0,dz=0] ~ ~ ~ scoreboard players set @p[scores={temp=0}] temp 1
execute @p[x=42,y=212,z=5,dx=0,dy=0,dz=0] ~ ~ ~ scoreboard players set @p[scores={temp=0}] temp 1
execute @p[scores={temp=1}] ~ ~ ~ scoreboard objectives add Cannon2 dummy
execute @p[scores={temp=1}] ~ ~ ~ scoreboard players add @p[x=42,y=212,z=3,dx=0,dy=0,dz=0] Cannon2 1
execute @p[scores={temp=1}] ~ ~ ~ scoreboard players add @p[x=42,y=212,z=5,dx=0,dy=0,dz=0] Cannon2 1
# 2-charge whiskey cannon
execute @p[scores={Cannon2=1},dz=0,dx=0,dy=0,y=212,x=42,z=3] ~ ~ ~ clone 177 110 2161 191 115 2167 28 212 0
# 3-charge whiskey cannon
execute @p[scores={Cannon2=1},dz=0,dx=0,dy=0,y=212,x=42,z=5] ~ ~ ~ clone 177 103 2161 191 108 2167 28 212 0
execute @p[scores={Cannon2=1}] ~ ~ ~ kill @e[x=28,y=212,z=0,dx=14,dy=5,dz=6,type=tnt]
execute @p[scores={temp=0}] ~ ~ ~ scoreboard objectives remove Cannon2
scoreboard objectives remove temp