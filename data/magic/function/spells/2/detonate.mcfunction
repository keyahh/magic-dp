particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3.5 0.7
execute as @e[type=#magic:targets,distance=..3.5] run damage @s 25 magic:ignore_cooldown
kill @s