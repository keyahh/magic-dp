damage @s 6 player_attack by @n[type=#magic:magic_user,tag=thisPlayer]
execute as @n[type=marker,tag=thisSpell,tag=magicMissile,distance=..5] at @s run function magic:spells/14/fizzle
scoreboard players reset #magicRange slowcast.itt