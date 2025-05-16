execute as @a[team=!setup] if score @e[tag=Base,limit=1] Phase matches 1 run team join setup @s
execute as @a[team=!ThreeLifes,team=!TwoLifes,team=!OneLife,team=!Ghosts] if score @e[tag=Base,limit=1] Phase matches 2 run team join ThreeLifes @s
execute as @a[team=!ThreeLifes,team=!TwoLifes,team=!OneLife,team=!Ghosts] if score @e[tag=Base,limit=1] Phase matches 3 run team join ThreeLifes @s
execute as @a[team=ThreeLifes] if score @s deaths matches 1 run function third:check_lives
execute as @a[team=TwoLifes] if score @s deaths matches 2 run function third:check_lives
execute as @a[team=OneLife] if score @s deaths matches 3 run function third:check_lives