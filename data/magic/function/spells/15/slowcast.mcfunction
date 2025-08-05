#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run tp @s ~ ~ ~

#block collision
execute unless block ~ ~ ~ #magic:passable run function magic:spells/15/fizzle

#entity collision
tag @s add thisSpell
scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#magic:targets,predicate=!magic:match_id,dx=.5,dy=.5,dz=.5] unless score @s magic.iframe matches 1.. as @n[type=marker,tag=thisSpell] positioned ~0.75 ~0.75 ~0.75 run function magic:spells/15/hit_mob
tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/15/slowcast