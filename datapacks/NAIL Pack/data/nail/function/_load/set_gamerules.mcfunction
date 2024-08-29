# Initial
gamerule commandBlockOutput false
gamerule logAdminCommands false
defaultgamemode adventure

# World Updates
gamerule doVinesSpread false
gamerule doWeatherCycle false
gamerule lavaSourceConversion false
gamerule snowAccumulationHeight 1
gamerule waterSourceConversion true

execute if score fake! gamestatus matches 1 run gamerule doDaylightCycle false
execute if score fake! gamestatus matches 2 run gamerule doDaylightCycle true
execute if score fake! gamestatus matches 3 run gamerule doDaylightCycle false

execute if score fake! gamestatus matches 1 run gamerule doFireTick false
execute if score fake! gamestatus matches 2 run gamerule doFireTick true
execute if score fake! gamestatus matches 3 run gamerule doFireTick false

execute if score fake! gamestatus matches 1 run gamerule randomTickSpeed 0
execute if score fake! gamestatus matches 2 run gamerule randomTickSpeed 3
execute if score fake! gamestatus matches 3 run gamerule randomTickSpeed 0

# Player
gamerule disableElytraMovementCheck false
gamerule doImmediateRespawn true
gamerule doLimitedCrafting false
gamerule drowningDamage true
# gamerule enderPearlsVanishOnDeath true
gamerule fallDamage true
gamerule fireDamage true
gamerule freezeDamage true
gamerule naturalRegeneration true
gamerule playersNetherPortalCreativeDelay 1
gamerule playersNetherPortalDefaultDelay 80
gamerule playersSleepingPercentage 101
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true

execute if score fake! gamestatus matches 1 run gamerule keepInventory false
execute if score fake! gamestatus matches 2 run gamerule keepInventory false
execute if score fake! gamestatus matches 3 run gamerule keepInventory true


# Mobs
gamerule disableRaids true
gamerule forgiveDeadPlayers true
gamerule maxEntityCramming 50
gamerule mobGriefing true
gamerule universalAnger false


# Miscellaneous
gamerule commandModificationBlockLimit 32768
gamerule globalSoundEvents true
gamerule maxCommandChainLength 65536
gamerule maxCommandForkCount 65536
gamerule reducedDebugInfo false


# Drops
gamerule blockExplosionDropDecay true
gamerule doEntityDrops true
gamerule doMobLoot true
gamerule mobExplosionDropDecay true
gamerule projectilesCanBreakBlocks true
gamerule tntExplosionDropDecay false

execute if score fake! gamestatus matches 1 run gamerule doTileDrops false
execute if score fake! gamestatus matches 2 run gamerule doTileDrops true
execute if score fake! gamestatus matches 3 run gamerule doTileDrops true


# Spawning
gamerule doInsomnia false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule doWardenSpawning false

execute if score fake! gamestatus matches 1 run gamerule doMobSpawning false
execute if score fake! gamestatus matches 2 run gamerule doMobSpawning true
execute if score fake! gamestatus matches 3 run gamerule doMobSpawning false


# Chat
gamerule announceAdvancements false
gamerule sendCommandFeedback false
gamerule showDeathMessages true


# BEDROCK ONLY BELOW
# gamerule commandBlocksEnabled true
# gamerule functionCommandLimit 10000
# gamerule pvp true
# gamerule recipesUnlock true
# gamerule respawnBlocksExplode true
# gamerule showBorderEffect true
# gamerule showCoordinates true
# gamerule showRecipeMessages true
# gamerule showTags true
# gamerule tntExplodes true 