playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 1.2
playsound minecraft:item.totem.use master @a ~ ~ ~ 3 1.5

particle minecraft:crimson_spore ~ ~ ~ 0 0 0 0.01 20 force

tag @e[type=marker,distance=..2,tag=soulOrbParticle,predicate=magic:match_spell] add inExplode

tag @n[type=#magic:magic_user,predicate=magic:match_id] add thisPlayer
execute as @e[type=#magic:targets,distance=..4.5,predicate=!magic:match_id] run function magic:spells/29/explode_damage
tag @n[type=#magic:magic_user,predicate=magic:match_id] remove thisPlayer