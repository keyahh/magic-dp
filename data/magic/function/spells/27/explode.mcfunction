particle lava ~ ~ ~ 0.5 0.5 0.5 0 24 force
particle flame ~ ~ ~ 0 0 0 0.4 10 normal
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0.7

scoreboard players operation #magicSearch magic.id = @s magic.id
execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[type=#magic:targets,dx=2,dy=2,dz=2] unless score @s magic.iframe matches 1.. run function magic:spells/27/damage

scoreboard players reset #magicRange slowcast
function magic:spells/27/fizzle