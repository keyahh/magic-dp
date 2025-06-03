particle dust{color:[0.145,0.020,0.220],scale:1.3} ~ ~ ~ 0 0 0 1 3 force

#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run function magic:spells/6/reposition

#block collision
execute unless block ~ ~ ~ #magic:passable run function magic:spells/6/fizzle

#entity collision
tag @s add thisSpell
scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[distance=..5,type=#magic:targets,predicate=!magic:match_id,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] at @s run function magic:spells/6/hit_entity
tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/6/slowcast