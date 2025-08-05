damage @s 12 magic:ignore_cooldown by @n[type=#magic:magic_user,tag=thisPlayer]
execute if entity @s[tag=shield] as @n[type=item_display,tag=thisSpell] at @s run function magic:spells/22/fizzle