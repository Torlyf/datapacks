scoreboard objectives add deaths deathCount
scoreboard objectives add lives dummy
scoreboard objectives add Phase dummy
title @a times 1s 3s 1s
team add setup
team modify setup friendlyFire false

#Add & Modify the Lives
team add ThreeLifes
team modify ThreeLifes color green
team add TwoLifes
team modify ThreeLifes color yellow
team add OneLife
team modify ThreeLifes color red
team add Ghosts
team modify Ghosts color gray

time set day
gamerule doDaylightCycle false


#you can change these!
gamerule playersSleepingPercentage 25
gamerule doInsomnia false
gamerule keepInventory true
gamerule enderPearlsVanishOnDeath false
gamerule keepInventory true
gamerule spectatorsGenerateChunks false
gamerule doWeatherCycle false