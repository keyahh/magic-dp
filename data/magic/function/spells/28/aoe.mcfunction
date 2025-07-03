scoreboard players reset @s magic.temp

particle minecraft:crimson_spore ~ ~ ~ 0 0 0 1 10 force
particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.2 0.2 0.2 0 15 force
function magic:spells/28/circle

scoreboard players operation #magicSearch magic.id = @s magic.id
tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer
execute positioned ~-1.25 ~-2.5 ~-1.25 as @e[type=#magic:targets,predicate=!magic:match_id,distance=..5,dx=1.5,dy=1.5,dz=1.5] at @s run damage @s 20 magic:ignore_cooldown by @n[type=#magic:magic_user,tag=thisPlayer]
tag @n[type=#magic:magic_user,predicate=magic:match_id,tag=thisPlayer] remove thisPlayer