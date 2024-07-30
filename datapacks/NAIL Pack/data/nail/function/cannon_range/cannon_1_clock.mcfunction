scoreboard objectives add temp dummy
scoreboard players set @p temp 0
execute @p[x=31,y=212,z=-12,dx=0,dy=0,dz=0] ~ ~ ~ scoreboard players set @p[scores={temp=0}] temp 1
execute @p[scores={temp=1}] ~ ~ ~ scoreboard objectives add Cannon1 dummy
execute @p[scores={temp=1}] ~ ~ ~ scoreboard players add @p[x=31,y=212,z=-12,dx=0,dy=0,dz=0] Cannon1 1
execute @p[scores={Cannon1=1}] ~ ~ ~ clone 177 117 2161 187 122 2171 28 212 -12
execute @p[scores={Cannon1=1}] ~ ~ ~ kill @e[x=28,y=212,z=-12,dx=10,dy=5,dz=10,type=tnt]
execute @p[scores={temp=0}] ~ ~ ~ scoreboard objectives remove Cannon1
scoreboard objectives remove temp