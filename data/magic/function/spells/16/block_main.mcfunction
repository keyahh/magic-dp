scoreboard players add @s magic.temp 1

scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ~-.5 ~-2 ~-.5 as @e[type=#magic:targets,predicate=!magic:match_id,dx=0,dy=1,dz=0] unless score @s magic.iframe matches 1.. run damage @s 20 player_attack by @n[type=#magic:magic_user,predicate=magic:match_id]

execute positioned ~-0.5 ~ ~-0.5 as @e[type=#magic:proj_spell,tag=projSpell,dx=0,dy=1.5,dz=0,distance=..6] run kill @s

execute if score @s magic.temp matches 2 run function magic:spells/16/transform_up
execute if score @s magic.temp matches 9 run function magic:spells/16/transform_down

execute if score @s magic.temp matches 19 run function magic:spells/16/remove_block