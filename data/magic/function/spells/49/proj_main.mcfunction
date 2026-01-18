particle dust{color:[1.000,0.000,0.533],scale:1} ~ ~ ~ 0 0 0 0 1 force
particle dust{color:[0.329,0.000,0.176],scale:1} ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove @s slowcast.time 1
execute if score @s slowcast.time matches ..0 run return run function magic:spells/49/fizzle

execute unless entity @s[tag=landed] run function magic:spells/49/travel
execute if entity @s[tag=landed] at @s run function magic:spells/49/tether_main

schedule function magic:spells/49/loop 1t append