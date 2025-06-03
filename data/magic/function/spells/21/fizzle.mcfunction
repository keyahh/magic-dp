particle flame ~ ~ ~ 0 0 0 0.2 25 force
playsound entity.generic.explode master @a ~ ~ ~ 1.5 1.2
playsound entity.ender_dragon.shoot master @a ~ ~ ~ 1.5 1.6

execute as @e[type=#magic:targets,predicate=!magic:match_id,distance=..3.5] run function magic:spells/21/damage
kill @s
scoreboard players reset #magicRange slowcast.itt
