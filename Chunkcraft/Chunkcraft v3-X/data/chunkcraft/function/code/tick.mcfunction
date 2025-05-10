#check the Health
execute as @a[tag=chunkcraft] if score @s deaths > @s healthCount as @s if score @s IsDead matches 0 run function chunkcraft:code/healthcheck
execute as @a[tag=chunkcraft] if score @s deaths < @s healthCount as @s if score @s IsDead matches 0 run function chunkcraft:code/healthcheck

#Add players to the no PVP team if the session hasn't started yet
execute as @a[tag=!chunkcraft] if score @e[tag=Base,limit=1] Phase matches 1 run team join Chunkcraft @a
execute as @a[tag=!chunkcraft] if score @e[tag=Base,limit=1] Phase matches 2 run function chunkcraft:code/join
execute as @a[tag=!chunkcraft] if score @e[tag=Base,limit=1] Phase matches 3 run gamemode spectator @s

#Gift Life Command
execute as @a[tag=chunkcraft] if score @s GiftLife >= @e[tag=Base,limit=1] One as @s run function chunkcraft:code/giftlife