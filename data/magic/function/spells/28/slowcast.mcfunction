particle dust{color:[1.000,0.310,0.310],scale:1.25} ~ ~ ~ 0 0 0 0 3 force

#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run function magic:spells/28/step

#block collision
execute unless block ~ ~ ~ #magic:passable run function magic:spells/28/fizzle

#entity collision
scoreboard players operation #magicSearch magic.id = @s magic.id
tag @s add thisSpell

execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=#magic:targets,predicate=!magic:match_id,distance=..5,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless score @s magic.iframe matches 1.. positioned ~0.75 ~0.75 ~0.75 as @n[type=marker,tag=thisSpell] run function magic:spells/28/damage

tag @s remove thisSpell


#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/28/slowcast