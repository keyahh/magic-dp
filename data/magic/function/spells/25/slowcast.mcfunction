#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run tp @s ~ ~ ~

#block collision
execute unless block ~ ~ ~ #magic:passable if entity @s[tag=!hitBlock] run function magic:spells/25/hit_block

#entity collision
tag @s add thisSpell
scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[distance=..10,type=#magic:targets,predicate=!magic:match_id,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless score @s magic.iframe matches 1.. as @n[distance=..10,type=item_display,tag=thisSpell] positioned ~0.75 ~0.75 ~0.75 run function magic:spells/25/damage
tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/25/slowcast