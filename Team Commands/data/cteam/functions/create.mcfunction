msg Cubert_4x4 Starting to Bake!
#Make the Teams

team add Spectators "Spectator"
team add Host "Host"
team add CoHost "CoHost"
team add Red "Red Rabbits"
team add Orange "Orange Ocelots"
team add Yellow "Yellow Yaks"
team add Lime "Lime Llamas"
team add Green "Green Geckos"
team add Cyan "Cyan Coyotes"
team add Aqua "Aqua Axolotls"
team add Blue "Blue Bats"
team add Purple "Purple Pandas"
team add Pink "Pink Parrots"
#Colors!

#Prefix Go brrrr
team modify Spectators prefix {"text":"Spectator","color":"gray"}
team modify Host prefix {"text":"[ Host ] ","color":"dark_red"}
team modify Host prefix {"text":"[Co-Host] ","color":"dark_red"}

#Rename or recolor the teams here:
#You can also do custom colors using Hex code like the example below:
#team modify Red prefix {"text":"Red Rabbit ","color":"#ff0000"}

team modify Red prefix {"text":"Red Rabbit ","color":"red"}
team modify Orange prefix {"text":"Orange Ocelot ","color":"gold"}
team modify Yellow prefix {"text":"Yellow Yak ","color":"yellow"}
team modify Lime prefix {"text":"Lime Llama ","color":"green"}
team modify Green prefix {"text":"Green Gecko ","color":"dark_green"}
team modify Cyan prefix {"text":"Cyan Coyote ","color":"dark_aqua"}
team modify Aqua prefix {"text":"Aqua Axolotl ","color":"aqua"}
team modify Blue prefix {"text":"Blue Bat ","color":"blue"}
team modify Purple prefix {"text":"Purple Panda ","color":"dark_purple"}
team modify Pink prefix {"text":"Pink Parrot ","color":"light_purple"}
#Adding players
msg Cubert_4x4 Made the Teams!