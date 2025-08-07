damage @s 6 player_attack by @n[type=#magic:magic_user,tag=thisPlayer]
scoreboard players add @s magic.stagger 2
execute as @n[type=marker,tag=thisSpell,tag=magicMissile,distance=..5] at @s run function magic:spells/14/fizzle
scoreboard players reset #magicRange slowcast.itt