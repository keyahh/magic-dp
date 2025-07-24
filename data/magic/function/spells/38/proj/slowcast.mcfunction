#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run tp @s ~ ~ ~

#entity collision
tag @s add thisSpell
scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[type=#magic:targets,predicate=!magic:match_id,dx=0,sort=nearest] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] unless score @s magic.iframe matches 1.. as @n[type=item_display,tag=ruinStarProj,tag=thisSpell] positioned ~0.875 ~0.875 ~0.875 run function magic:spells/38/proj/hit_entity
tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/38/proj/slowcast