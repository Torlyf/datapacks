function third:load
kill @e[tag=Base]
summon armor_stand ~ -65 ~ {Invulnerable:true,NoGravity:true,Tags:["Base"],CustomName:'"The Watchers"'}
execute as @e[tag=Base] run worldborder center ~ ~ 
worldborder set 5