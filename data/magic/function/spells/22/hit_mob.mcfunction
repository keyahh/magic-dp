damage @s 14 player_attack by @n[type=#magic:magic_user,tag=thisPlayer]
execute if entity @s[tag=shield] as @n[type=item_display,tag=thisSpell] at @s run function magic:spells/22/fizzle
scoreboard players add @s magic.stagger 4