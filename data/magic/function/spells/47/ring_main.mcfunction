scoreboard players add @s magic.temp 1

execute if score @s magic.temp matches 2 run function magic:spells/47/transform_ring

execute if score @s magic.temp matches 12.. run kill @s