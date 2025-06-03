scoreboard players reset @s magic.temp

tag @s add thisAnchor
execute as @e[type=bat,tag=batSwarm,predicate=magic:match_bat] at @s run function magic:spells/12/shoot_bat
tag @s remove thisAnchor