particle dust{color:[0.000,0.702,1.000],scale:1} ~ ~ ~ 0 0 0 0 1 force

#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run tp @s ~ ~ ~

#block collision
execute unless block ~ ~ ~ #magic:passable run return run function magic:spells/37/explode

#entity collision
tag @s add thisSpell
scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=#magic:targets,predicate=!magic:match_id,distance=..10,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless score @s magic.iframe matches 1.. as @n[type=marker,tag=strike,tag=thisSpell,distance=..5] positioned ~0.75 ~0.75 ~0.75 run function magic:spells/37/explode
tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/37/slowcast