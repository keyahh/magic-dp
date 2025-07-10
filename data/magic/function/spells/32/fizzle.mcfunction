playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
particle minecraft:squid_ink ~ ~ ~ 0 0 0 0.4 20

scoreboard players operation #magicSearch magic.id = @s magic.id
execute as @e[type=#magic:targets,distance=..3.5,predicate=!magic:match_id] run damage @s 35

kill @s