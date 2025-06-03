scoreboard players reset #magicRange slowcast.itt
execute as @e[type=#magic:targets,distance=..3] run function magic:spells/18/effects
particle dust{color:[1.000,0.322,0.302],scale:1} ~ ~ ~ 1.4 1.4 1.4 1 20 force
kill @s