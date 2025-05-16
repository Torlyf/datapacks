execute if score @e[tag=Base,limit=1] Phase matches 2 run tellraw @a[team=setup] ["<The Watchers> ",{"text":"PVP is on, Have fun!","color":"dark_red"}]
scoreboard players set @e[tag=Base,limit=1] Phase 3
team remove setup