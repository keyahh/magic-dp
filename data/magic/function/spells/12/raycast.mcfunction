scoreboard players remove #magicRange magic.temp 1

scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ~-1 ~-1 ~-1 as @e[distance=..12,type=#magic:targets,predicate=!magic:match_id,dx=1,dy=1,dz=1,limit=1] run return run function magic:spells/12/mark_target

execute if score #magicRange magic.temp matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #magic:passable run function magic:spells/12/raycast