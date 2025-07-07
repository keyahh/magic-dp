#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run tp @s ~ ~ ~

#block collision
execute unless block ~ ~ ~ #magic:passable run function magic:spells/21/fizzle

#entity collision
tag @s add thisSpell
scoreboard players operation #magicSearch magic.id = @s magic.id
tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer
execute positioned ~-0.45 ~-0.45 ~-0.45 as @e[type=#magic:targets,predicate=!magic:match_id,distance=..6,dx=0] positioned ~-0.1 ~-0.1 ~-0.1 if entity @s[dx=0] unless score @s magic.iframe matches 1.. as @n[type=marker,tag=thisSpell,distance=..6] at @s run function magic:spells/21/fizzle
tag @n[type=#magic:magic_user,predicate=magic:match_id,tag=thisPlayer] remove thisPlayer
tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/21/slowcast