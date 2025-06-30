particle firework ~ ~ ~ 0 0 0 0 1 force

#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run function magic:spells/3/reposition

#block collision
execute unless block ~ ~ ~ #magic:passable run function magic:spells/3/fizzle

#entity collision
tag @s add thisSpell
scoreboard players operation #magicSearch magic.id = @s magic.id
tag @p[predicate=magic:match_id] add thisPlayer
execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[distance=..5,type=#magic:targets,predicate=!magic:match_id,tag=!boss,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] at @s run function magic:spells/3/disarm
tag @p[predicate=magic:match_id] remove thisPlayer
tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/3/slowcast