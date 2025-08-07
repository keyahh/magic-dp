particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3.5 0.7
scoreboard players operation #magicSearch magic.id = @s magic.id
execute as @e[type=#magic:targets,distance=..3.5] run function magic:spells/2/damage
kill @s