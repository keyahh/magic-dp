damage @s 5 magic:ignore_cooldown by @n[type=#magic:magic_user,tag=thisPlayer]
execute as @n[type=marker,tag=thisSpell,tag=crystalBlast,distance=..5] at @s run function magic:spells/24/fizzle
scoreboard players reset #magicRange slowcast.itt