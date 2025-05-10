#Destroy the box without... messing stuff up.
gamerule doTileDrops false
execute at @e[limit=1,tag=Base] run fill ~5 300 ~5 ~-5 305 ~-5 air
gamerule doTileDrops true

#Count Players, & run Commands on them
execute as @p[tag=!chunkcraft] run function chunkcraft:code/join

#Turn off Adventure Mode
defaultgamemode survival
gamemode survival @p

#Make the world safer from any mobs (And their loot) that might be hanging around on the surface.
time set day
gamerule doMobLoot false
kill @e[type=minecraft:creeper]
kill @e[type=minecraft:skeleton]
kill @e[type=minecraft:zombie]
kill @e[type=minecraft:zombie_villager]
kill @e[type=minecraft:spider]
gamerule doMobLoot true

#Misc
gamerule spawnRadius 1
scoreboard players set @e[tag=Base,limit=1] Phase 2
effect give @a slow_falling 35
execute as @a[tag=chunkcraft] run data modify entity @s foodExhaustionLevel set value 0
#6000 = 5 min, 12000 = 10 min, 18000 = 15 min
schedule function chunkcraft:code/enable_pvp 18000
schedule function chunkcraft:code/healthcheck 5