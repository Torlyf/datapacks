# someone (@s) ran the command /trigger GiftLife set X
execute as @s if score @s healthCount matches 11 run tellraw @s ["<The Watchers> ",{"text":"You can't send a life you don't have bozo!","color":"dark_red"}]
execute as @s if score @s healthCount matches 10 run tellraw @s ["<The Watchers> ",{"text":"You can't give up your Last Life!","color":"dark_red"}]
execute as @s if score @s deaths matches 1..9 run scoreboard players add @s deaths 1

tag @s add GiftingLifeRn
execute as @s if score @s deaths matches 1..9 run execute as @p[tag=!GiftingLifeRn,gamemode=survival] run function chunkcraft:code/gainlife
execute as @s if score @s deaths matches 1..9 run execute as @p[tag=!GiftingLifeRn,gamemode=survival] run title @s title "You Got Gifted A Life!"
execute as @s if score @s deaths matches 1..9 run execute as @p[tag=!GiftingLifeRn,gamemode=survival] run advancement grant @s only chunkcraft:gifted
tag @s remove GiftingLifeRn

advancement grant @s only chunkcraft:gifter
scoreboard players set @s GiftLife 0
scoreboard players enable @s GiftLife
