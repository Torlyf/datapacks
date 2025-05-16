execute if score @s deaths matches 0 run team join ThreeLifes
execute if score @s deaths matches 0 run scoreboard players set @s lives 3
execute if score @s deaths matches 1 run team join TwoLifes
execute if score @s deaths matches 1 run scoreboard players set @s lives 2
execute if score @s deaths matches 2 run team join OneLife
execute if score @s deaths matches 2 run scoreboard players set @s lives 1
execute if score @s deaths matches 3 run team join Ghosts
execute if score @s deaths matches 3 run scoreboard players set @s lives 0
execute if score @s deaths matches 3 run gamemode spectator
execute if score @s deaths matches 3 run playsound minecraft:entity.lightning_bolt.thunder player @a