#Don't change these ones!
scoreboard objectives add deaths deathCount
scoreboard objectives add healthCount dummy
scoreboard objectives add playerCount dummy
scoreboard objectives add banCount dummy
scoreboard objectives add GiftLife trigger
scoreboard objectives add IsDead dummy
scoreboard objectives add One dummy
scoreboard objectives add Phase dummy

title @a times 1s 3s 1s
team add Chunkcraft
team modify Chunkcraft friendlyFire false

#These are some base values to change if you want to.
gamerule announceAdvancements false 
gamerule showDeathMessages false
gamerule playersSleepingPercentage 25
gamerule doInsomnia false
gamerule enderPearlsVanishOnDeath false
gamerule keepInventory true
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false

#This next line shows the heart count when you press tab.
scoreboard objectives setdisplay list healthCount