tellraw @p "An ominous feeling comes through you..."
scoreboard players set @e[tag=Base,limit=1] Phase 3

gamerule keepInventory true
gamerule doWeatherCycle false
weather clear

#Disable & take players out of the Nether
#Honestly not sure if this works...
gamerule playersNetherPortalDefaultDelay 0
effect give @a[nbt={Dimension:the_nether}] slow_falling 35
tellraw @a[nbt={Dimension:the_nether}] "A Force rushes through you, breaking you into particles beyond feeling."
tellraw @a[nbt={Dimension:the_nether}] ["<The Watchers> ",{"text":"You've got 60 seconds of slow falling to survive this height...","color":"dark_red"}]
execute as @e[type=glow_item_frame,limit=1,y=-65] run tp @a[nbt={Dimension:the_nether}] ~ 300 ~

#Start the Last Session thing until Everyone is banned except the last
execute if score @e[tag=Base,limit=1] banCount = @e[tag=Base,limit=1] playerCount run schedule function chunkcraft:last/glow 6000