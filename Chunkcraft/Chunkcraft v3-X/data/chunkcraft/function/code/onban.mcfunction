playsound minecraft:block.bell.use master @a ~ ~ ~ 1 .5
worldborder add 20 1

execute if score @e[tag=Base,limit=1] Phase matches 3 run function chunkcraft:last/reset

#Chat Message
tag @p add IsntBeingBannedRn
tag @s remove IsntBeingBannedRn 
tellraw @s ["<The Watchers> ",{"text":"Skill Issue.","color":"dark_red"}]
tellraw @p[tag=IsntBeingBannedRn] ["<The Watchers> ",{"text":"A player has expired...","color":"dark_red"}]
tag @p remove IsntBeingBannedRn