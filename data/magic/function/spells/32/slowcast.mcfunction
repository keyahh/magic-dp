#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run function magic:spells/32/step

#block collision
execute unless block ^ ^ ^0.5 #magic:passable run return run scoreboard players reset @s slowcast.dist

#entity collision
tag @s add thisSpell
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=#magic:targets,predicate=!magic:match_id,distance=..5,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] as @n[type=item_display,tag=thisSpell,distance=..6] run scoreboard players reset @s slowcast.dist
tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/32/slowcast