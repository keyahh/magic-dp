particle squid_ink ~ ~ ~ 0 0 0 0 1 force

#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run tp @s ~ ~ ~

#block collision
execute unless block ~ ~ ~ #magic:passable run return run function magic:spells/34/explode

#entity collision
tag @s add thisSpell
scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ~-0.5 ~-1 ~-0.5 as @e[type=#magic:targets,predicate=!magic:match_id,distance=..5,dx=0,dy=0,dz=0] unless score @s magic.iframe matches 1.. as @n[type=marker,tag=thisSpell,distance=..6] at @s run return run function magic:spells/34/explode
tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/34/slowcast