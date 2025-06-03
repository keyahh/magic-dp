scoreboard players add @s magic.temp 1

scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ~-.5 ~-.5 ~-.5 as @e[type=#magic:targets,predicate=!magic:match_id,dx=0,dy=0,dz=0] run damage @s 20 player_attack by @n[type=#magic:magic_user,predicate=magic:match_id]

execute if score @s magic.temp matches 2 run function magic:spells/16/transform_up
execute if score @s magic.temp matches 9 run function magic:spells/16/transform_down

execute if score @s magic.temp matches 19 run function magic:spells/16/remove_block