particle block{block_state:"minecraft:redstone_block"} ~ ~-0.3 ~ 0 0.2 0 0 2 force

#repositioning
scoreboard players remove #magicRange slowcast.itt 1
execute if score #magicRange slowcast.itt matches ..0 run tp @s ~ ~ ~

#block collision
execute unless block ~ ~ ~ #magic:passable run function magic:spells/31/fizzle

#entity collision
tag @s add thisSpell
scoreboard players operation #magicSearch magic.id = @s magic.id
tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer
execute positioned ~-0.625 ~-3 ~-0.625 as @e[type=#magic:targets,predicate=!magic:match_id,distance=..5,dx=0.25,dy=2,dz=0.25] unless score @s magic.iframe matches 1.. at @s run function magic:spells/31/damage
tag @n[type=#magic:magic_user,predicate=magic:match_id,tag=thisPlayer] remove thisPlayer
tag @s remove thisSpell

#recurse
execute if score #magicRange slowcast.itt matches 1.. positioned ^ ^ ^0.25 run function magic:spells/31/slowcast