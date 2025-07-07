#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run tp @s ~ ~ ~

#block collision
execute unless block ~ ~ ~ #magic:passable if entity @s[tag=!hitBlock] run function magic:spells/25/hit_block

#entity collision
tag @s add thisSpell
scoreboard players operation #magicSearch magic.id = @s magic.id
tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=#magic:targets,predicate=!magic:match_id,distance=..5,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless score @s magic.iframe matches 1.. at @s run function magic:spells/25/damage
tag @n[type=#magic:magic_user,predicate=magic:match_id,tag=thisPlayer] remove thisPlayer
tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/25/slowcast