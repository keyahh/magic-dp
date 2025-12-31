particle dust{color:[0.451,0.290,0.153],scale:1} ~ ~ ~ 0 0 0 1 1 force
particle dust{color:[0.851,0.000,0.000],scale:0.5} ~ ~ ~ 0.1 0.1 0.1 1 4 force

#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run tp @s ~ ~ ~

#block collision
execute unless block ~ ~ ~ #magic:passable run return run function magic:spells/46/fizzle

#entity collision
tag @s add thisSpell
scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[distance=..12,type=#magic:flesh_target,predicate=!magic:match_id,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless score @s magic.iframe matches 1.. positioned ~0.75 ~0.75 ~0.75 as @n[distance=..12,type=marker,tag=thisSpell] run function magic:spells/46/hit_entity
tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/46/slowcast