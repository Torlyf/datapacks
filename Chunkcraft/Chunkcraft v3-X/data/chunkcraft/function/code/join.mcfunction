#This function is run on every player who joins, only once.

#Increase the Count
scoreboard players add @e[tag=Base] playerCount 1

#Tag the Player, & Run Commands
execute as @s run tag @s add chunkcraft
execute as @s run advancement grant @s only chunkcraft:root
execute as @s run advancement grant @s only chunkcraft:health/h1
scoreboard players set @a[tag=chunkcraft] deaths 1
scoreboard players set @a[tag=chunkcraft] healthCount 0
execute as @s run advancement grant @s[tag=chunkcraft] only chunkcraft:easter_eggs_wip_no_looking_lol/eegg
execute as @s run scoreboard players set @s IsDead 0
scoreboard players enable @s GiftLife

#Test for any more players, This should throw an error at the end but only after all players have been affected.
execute as @p[tag=!chunkcraft,limit=1] run function chunkcraft:code/join