#Spawn the Item frame, a Base of operations
kill @e[tag=Base]
summon glow_item_frame ~ -65 ~ {Invulnerable:true,NoGravity:true,Tags:["Base"],CustomName:'"The Watchers"'}
scoreboard players add @e[tag=Base,limit=1] playerCount 1
scoreboard players set @e[tag=Base,limit=1] One 1


# Build The Spawn Box
execute as @e[tag=Base] run setblock ~ 300 ~ chiseled_stone_bricks
execute as @e[tag=Base] run fill ~5 303 ~5 ~-5 300 ~-5 spruce_planks hollow
execute as @e[tag=Base] run setblock ~ 300 ~ chiseled_stone_bricks
execute as @e[tag=Base] run fill ~5 303 ~5 ~-5 303 ~-5 air
execute as @e[tag=Base] run setblock ~ 301 ~ lantern
execute as @e[tag=Base] run fill ~5 300 ~5 ~-5 300 ~-5 stone_bricks

# This sets the world spawn to be in the box for the start
execute as @e[tag=Base] run setworldspawn ~ 302 ~
execute as @e[tag=Base] run tp @a ~ 303 ~
execute as @e[tag=Base] run worldborder center ~ ~

#Misc
defaultgamemode adventure
gamemode adventure @a
scoreboard players set @e[tag=Base,limit=1] Phase 1
tag @a add Admin
tellraw @a[tag=Admin] "K, Spawn set."
tellraw @a[tag=Admin] "When you're ready to start, go ahead and do /function chunkcraft:start"

# This sets the RADIUS of the world, you can change this if you want.
worldborder set 50