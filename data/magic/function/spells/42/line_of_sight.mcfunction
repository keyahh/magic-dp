scoreboard players remove #range magic.temp 1
scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#magic:targets,predicate=!magic:match_id,tag=raptorTarget,dx=0,dy=0,dz=0] run function magic:spells/42/found_target

execute if score #range magic.temp matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #magic:passable run function magic:spells/42/line_of_sight