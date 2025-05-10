tag @p add IsBeingRevivedRn

scoreboard players set @s IsDead 0
scoreboard players remove @e[tag=Base,limit=1] banCount 1
scoreboard players set @s healthCount 1
scoreboard players set @s deaths 0
advancement revoke @s from chunkcraft:health/h1
advancement revoke @s only chunkcraft:health/h1
advancement grant @s only chunkcraft:health/h1
execute as @e[tag=Base,limit=1] run tp @a[tag=IsBeingBannedRn] ~ 300 ~
gamemode survival
effect give @s slow_falling 35

#Quick Chat Message
tellraw @s ["<The Watchers> ",{"text":"Welcome Back...","color":"dark_red"}]
playsound minecraft:block.bell.use master @a ~ ~ ~ 1 .5
tellraw @a[tag=!IsBeingRevivedRn] ["<The Watchers> ",{"text":"A player has been revived...","color":"dark_red"}]
tag @a remove IsBeingRevivedRn