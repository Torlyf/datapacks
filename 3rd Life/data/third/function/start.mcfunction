worldborder set 500
gamemode survival @a
team join ThreeLifes @a
scoreboard players set @e[tag=Base] Phase 2
execute as @a run data modify entity @s foodExhaustionLevel set value 0
gamerule doDaylightCycle true
tellraw @a ["<The Watchers> ",{"text":"Good luck.","color":"dark_red"}]

# 6000  = 5  min
# 12000 = 10 min 
# 18000 = 15 min
schedule function third:enable_pvp 18000

# This is the radius of your worldboarder, so the actual width/length of your world is double this number:
worldborder set 350