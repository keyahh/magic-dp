scoreboard players reset #magicRange slowcast.itt

damage @s 15 magic:ignore_cooldown by @n[type=#magic:magic_user,tag=thisPlayer]

execute as @n[distance=..5,tag=thisSword,type=item_display] at @s run function magic:spells/4/hit_block