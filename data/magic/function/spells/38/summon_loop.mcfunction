scoreboard players add @s magic.atkCD 1

execute if score @s magic.atkCD matches 1 run function magic:spells/38/proj/spawn_proj
execute if score @s magic.atkCD matches 16 run function magic:spells/38/proj/spawn_proj
execute if score @s magic.atkCD matches 31 run function magic:spells/38/proj/spawn_proj

execute if score @s magic.atkCD matches 80 run scoreboard players add @s magic.wCD 1

execute if score @s magic.wCD matches ..2 if score @s magic.atkCD matches 80 run scoreboard players reset @s magic.atkCD