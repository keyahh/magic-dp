execute unless block ~ ~ ~ #magic:passable run tp @s ^ ^0.1 ^-0.1
execute if block ^ ^ ^0.25 #magic:passable run tp @s ^ ^ ^0.25
execute positioned over world_surface positioned ~ ~12 ~ if entity @s[distance=..3] run function magic:spells/42/idle
execute if entity @s[tag=inRise] positioned over world_surface positioned ~ ~12 ~ if entity @s[distance=3..] positioned over world_surface positioned ~ ~6 ~ if entity @s[distance=..6] at @s if block ~ ~1 ~ #magic:passable if block ~ ~2 ~ #magic:passable run tp ~ ~0.4 ~