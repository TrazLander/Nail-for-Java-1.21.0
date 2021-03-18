gamerule commandBlockOutput false
gamerule logAdminCommands false
defaultgamemode 2

gamerule announceAdvancements false
gamerule disableElytraMovementCheck false
gamerule disableRaids true

execute if score fake! gamestatus matches 1 run gamerule doDaylightCycle false
execute if score fake! gamestatus matches 2 run gamerule doDaylightCycle true
execute if score fake! gamestatus matches 3 run gamerule doDaylightCycle false

gamerule doEntityDrops true

execute if score fake! gamestatus matches 1 run gamerule doFireTick false
execute if score fake! gamestatus matches 2 run gamerule doFireTick true
execute if score fake! gamestatus matches 3 run gamerule doFireTick false

gamerule doInsomnia false
gamerule doImmediateRespawn true
gamerule doLimitedCrafting false
gamerule doMobLoot true

execute if score fake! gamestatus matches 1 run gamerule doMobSpawning false
execute if score fake! gamestatus matches 2 run gamerule doMobSpawning true
execute if score fake! gamestatus matches 3 run gamerule doMobSpawning false

gamerule doPatrolSpawning false

execute if score fake! gamestatus matches 1 run gamerule doTileDrops false
execute if score fake! gamestatus matches 2 run gamerule doTileDrops true
execute if score fake! gamestatus matches 3 run gamerule doTileDrops true

gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fallDamage true
gamerule fireDamage true
gamerule forgiveDeadPlayers true
gamerule freezeDamage true

execute if score fake! gamestatus matches 1 run gamerule keepInventory false
execute if score fake! gamestatus matches 2 run gamerule keepInventory false
execute if score fake! gamestatus matches 3 run gamerule keepInventory true

gamerule maxCommandChainLength 65536
gamerule maxEntityCramming 50
gamerule mobGriefing true
gamerule naturalRegeneration true
gamerule playersSleepingPercentage 100
gamerule pvp true

execute if score fake! gamestatus matches 1 run gamerule randomTickSpeed 0
execute if score fake! gamestatus matches 2 run gamerule randomTickSpeed 3
execute if score fake! gamestatus matches 3 run gamerule randomTickSpeed 0

gamerule reducedDebugInfo false
gamerule sendCommandFeedback false
gamerule showCoordinates false
gamerule showDeathMessages true
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false
gamerule tntExplodes true
gamerule universalAnger false
gamerule showTags true