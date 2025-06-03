particle end_rod ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove #splitSegRange magic.temp 1
execute positioned ~ ~ ~ if score #splitSegRange magic.temp matches 0 if score #splitJoint magic.temp matches 1.. rotated as @s run function magic:spells/1/angle
execute positioned ~-0.2 ~-0.2 ~-0.2 as @e[type=#magic:targets,tag=!thisPlayer,dx=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0] run damage @s 50 lightning_bolt by @p[tag=thisPlayer]
execute if score #splitSegRange magic.temp matches 1.. positioned ^ ^ ^0.1 run function magic:spells/1/raycast_2