scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ^-0.5 ^0.5 ^0.5 run function animated_java:laceration/summon {args:{}}
execute as @e[type=#magic:targets,tag=!thisPlayer,distance=..3.6] run function magic:spells/15/damage

playsound minecraft:item.trident.throw master @a ~ ~ ~ 3 0.1

scoreboard players reset #magicRange slowcast.itt
kill @s