# run - before game
# turns off both ticking sections
fill 183 78 2161 183 78 2163 stone 0 replace redstone_block 0

# run - on game start
# turns on both ticking sections
fill 183 78 2161 183 78 2163 redstone_block 0 replace stone 0

# run - on game end
# turns off both ticking sections
fill 183 78 2161 183 78 2163 stone 0 replace redstone_block 0


# tick - Team 1 Spawn Protection
scoreboard objectives add temp dummy
scoreboard players set @a[scores={Teams=2},dz=3,dx=37,dy=9,y=214,x=-19,z=241] temp 1
tp @a[scores={temp=1}] ~ ~ ~-1 ~ ~
scoreboard players reset @a temp

scoreboard players set @p temp 0
execute @p ~ ~ ~ detect 0 218 429 air 0 execute @p ~ ~ ~ detect -1 218 429 air 0 execute @p ~ ~ ~ detect 0 219 429 air 0 execute @p ~ ~ ~ detect -1 219 429 air 0 scoreboard players set @p[scores={temp=0..}] temp 1
execute @p[scores={temp=0}] ~ ~ ~ fill 0 218 429 -1 219 429 air 0
scoreboard objectives remove temp

kill @e[##T1SP,type=tnt]
kill @e[##T1SP,type=ender_pearl]


# tick - Team 2 Spawn Protection
scoreboard objectives add temp dummy
scoreboard players set @a[scores={Teams=1},dz=16,dx=39,dy=53,y=205,x=-20,z=31] temp 1
tp @a[scores={temp=1}] ~ ~ ~1 ~ ~
scoreboard players reset @a temp

scoreboard players set @p temp 0
execute @p ~ ~ ~ detect -1 208 34 air 0 execute @p ~ ~ ~ detect 0 208 34 air 0 execute @p ~ ~ ~ detect -1 209 34 air 0 execute @p ~ ~ ~ detect 0 209 34 air 0 scoreboard players set @p[scores={temp=0..}] temp 1
execute @p[scores={temp=0}] ~ ~ ~ fill -1 208 34 0 209 34 air 0
scoreboard objectives remove temp

kill @e[x=-20,y=205,z=31,dx=39,dy=53,dz=16,type=tnt]
kill @e[x=-20,y=205,z=31,dx=39,dy=53,dz=16,type=ender_pearl]