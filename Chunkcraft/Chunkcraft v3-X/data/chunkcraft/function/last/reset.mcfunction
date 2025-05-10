effect clear @p glowing
worldborder add 0
execute if score @e[tag=Base,limit=1] playerCount < @e[tag=Base,limit=1] banCount run schedule function chunkcraft:last/glow 6000
#Yes, playerCount is ajusted to leave one last one standing.