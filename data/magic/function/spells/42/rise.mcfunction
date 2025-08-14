scoreboard players add @s magic.wCD 1
execute if score @s magic.wCD matches 14.. run function magic:spells/42/idle

execute unless block ~ ~ ~ #magic:passable run tp @s ^ ^0.1 ^-0.1
execute if block ^ ^0.25 ^0.25 #magic:passable run tp @s ^ ^0.25 ^0.25
execute positioned over world_surface positioned ~ ~12 ~ if entity @s[distance=..3] run function magic:spells/42/idle
#execute if block ~ ~1 ~ #magic:passable if block ~ ~2 ~ #magic:passable run tp ~ ~0.25 ~