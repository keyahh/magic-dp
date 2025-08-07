scoreboard players operation #magicSearch magic.id = @s magic.id
tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer

execute positioned ^ ^ ^0.75 run function animated_java:laceration/summon {args:{}}
execute positioned ~-1.25 ~-1.25 ~-1.25 as @e[type=#magic:targets,tag=!thisPlayer,dx=1.25,dy=1.25,dz=1.25] run function magic:spells/15/damage

playsound minecraft:item.trident.throw master @a ~ ~ ~ 3 0.1

tag @n[type=#magic:magic_user,predicate=magic:match_id] remove thisPlayer

scoreboard players reset #magicRange slowcast.itt
kill @s