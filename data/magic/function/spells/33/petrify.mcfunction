execute as @n[type=marker,tag=petrify,tag=thisSpell,distance=..6] at @s run function magic:spells/33/fizzle

attribute @s minecraft:movement_speed base set 0
attribute @s minecraft:jump_strength base set 0
attribute @s minecraft:entity_interaction_range base set -10
attribute @s minecraft:block_interaction_range base set 0
attribute @s minecraft:attack_speed base set 0
attribute @s minecraft:follow_range base set -10

scoreboard players set @s magic.petrify 1200
schedule function magic:spells/33/petrify_loop 1t append