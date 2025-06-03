scoreboard players remove #bezierRay bezier.temp 1

execute if score #bezierRay bezier.temp matches 0 run function magic:spells/9/bezier/endpoint
execute unless block ^ ^ ^0.5 #magic:passable run function magic:spells/9/bezier/endpoint

tag @s add thisBezier
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=#magic:targets,predicate=!magic:match_id,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] at @s as @n[type=marker,tag=thisBezier] run function magic:spells/9/bezier/endpoint
tag @s remove thisBezier

execute if score #bezierRay bezier.temp matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #magic:passable run function magic:spells/9/bezier/raycast