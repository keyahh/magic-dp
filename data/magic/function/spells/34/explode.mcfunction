scoreboard players operation #magicSearch magic.id = @s magic.id

tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer
execute as @e[type=#magic:targets,predicate=!magic:match_id,distance=..3] run function magic:spells/34/damage
tag @n[type=#magic:magic_user,predicate=magic:match_id,tag=thisPlayer] remove thisPlayer
effect give @e[type=#magic:targets,distance=..3,tag=!boss] wither 5 1 true

particle minecraft:squid_ink ~ ~ ~ 0 0 0 0.7 15
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.9

function magic:spells/34/fizzle