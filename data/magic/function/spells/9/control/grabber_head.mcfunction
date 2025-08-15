tag @s add thisHead
execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=#magic:targets,predicate=!magic:match_id,dx=0,dy=0,dz=0,tag=!boss] unless score @s magic.iframe matches 1.. run function magic:spells/9/control/mount
tag @s remove thisHead