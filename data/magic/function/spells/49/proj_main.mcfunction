particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove @s slowcast.time 1
execute if score @s slowcast.time matches ..0 run function magic:spells/49/fizzle

execute unless entity @s[tag=landed] run function magic:spells/49/travel
execute if entity @s[tag=landed] at @s run function magic:spells/49/tether_main

schedule function magic:spells/49/loop 1t append