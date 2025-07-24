particle flame ~ ~ ~ 0.2 0.2 0.2 0.02 1 force

#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run tp @s ~ ~ ~

#block collision
execute unless block ~ ~ ~ #magic:passable run return run function magic:spells/27/explode

#entity collision
tag @s add thisSpell
scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#magic:targets,predicate=!magic:match_id,distance=..5,dx=0,dy=0,dz=0] unless score @s magic.iframe matches 1.. as @n[type=item_display,tag=fireball,tag=thisSpell,distance=..6] positioned ~0.5 ~0.5 ~0.5 run return run function magic:spells/27/explode
tag @s remove thisSpell

$execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.15 positioned ~ ~$(grav) ~ run function magic:spells/27/slowcast with storage magic:slowcast