##this is run for every player.
#Let's make sure they have their advancements.
execute if score @s deaths matches 1 run advancement grant @s only chunkcraft:health/h1
execute if score @s deaths matches 2 run advancement grant @s only chunkcraft:health/h2
execute if score @s deaths matches 3 run advancement grant @s only chunkcraft:health/h3
execute if score @s deaths matches 4 run advancement grant @s only chunkcraft:health/h4
execute if score @s deaths matches 5 run advancement grant @s only chunkcraft:health/h5
execute if score @s deaths matches 6 run advancement grant @s only chunkcraft:health/h6
execute if score @s[advancements={chunkcraft:killer=false}] deaths matches 6 run advancement grant @s only chunkcraft:pacifist
execute if score @s deaths matches 7 run advancement grant @s only chunkcraft:health/h7
execute if score @s deaths matches 8 run advancement grant @s only chunkcraft:health/h8
execute if score @s deaths matches 9 run advancement grant @s only chunkcraft:health/h9
execute if score @s deaths matches 10 run advancement grant @s only chunkcraft:health/h10
execute if score @s deaths matches 11 run advancement grant @s only chunkcraft:health/h11
execute if score @s deaths matches 11 run advancement grant @s only chunkcraft:banned

execute if score @s deaths matches 11 run scoreboard players set @s IsDead 1
execute if score @s deaths matches 11 run scoreboard players set @s healthCount 11
execute if score @s deaths matches 12 run scoreboard players set @s deaths 11
#annnnd then we make sure their heart count is right.
execute if score @s healthCount < @s deaths as @s run function chunkcraft:code/healthcheck2
#tellraw @a[tag=Admin] "//healthcheck ran!"