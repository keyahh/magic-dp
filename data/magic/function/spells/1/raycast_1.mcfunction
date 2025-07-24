particle end_rod ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove #boltSegRange magic.temp 1
execute positioned ~ ~ ~ if score #boltSegRange magic.temp matches 0 if score #boltJoint magic.temp matches 1.. rotated as @s run function magic:spells/1/angle
execute positioned ~-0.2 ~-0.2 ~-0.2 as @e[type=#magic:targets,tag=!thisPlayer,predicate=!magic:match_id,dx=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0] unless score @s magic.iframe matches 1.. run function magic:spells/1/damage
execute if score #boltSegRange magic.temp matches 1.. positioned ^ ^ ^0.1 run function magic:spells/1/raycast_1