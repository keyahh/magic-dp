#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run tp @s ~ ~ ~

#block collision
execute unless block ~ ~ ~ #magic:passable run function magic:spells/22/fizzle

#entity collision
scoreboard players operation #magicSearch magic.id = @s magic.id

tag @s add thisSpell
scoreboard players operation #magicSearch magic.id = @s magic.id
tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer
execute positioned ~-0.475 ~-0.475 ~-0.475 as @e[distance=..5,type=#magic:targets,predicate=!magic:match_id,dx=0] positioned ~-0.05 ~-0.05 ~-0.05 if entity @s[dx=0] unless score @s magic.iframe matches 1.. run function magic:spells/22/hit_mob

execute positioned ^1 ^ ^ positioned ~-0.475 ~-0.475 ~-0.475 as @e[distance=..5,type=#magic:targets,predicate=!magic:match_id,dx=0] positioned ~-0.05 ~-0.05 ~-0.05 if entity @s[dx=0] unless score @s magic.iframe matches 1.. run function magic:spells/22/hit_mob

execute positioned ^-1 ^ ^ positioned ~-0.475 ~-0.475 ~-0.475 as @e[distance=..5,type=#magic:targets,predicate=!magic:match_id,dx=0] positioned ~-0.05 ~-0.05 ~-0.05 if entity @s[dx=0] unless score @s magic.iframe matches 1.. run function magic:spells/22/hit_mob

tag @n[type=#magic:magic_user,predicate=magic:match_id,tag=thisPlayer] remove thisPlayer
tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/22/slowcast