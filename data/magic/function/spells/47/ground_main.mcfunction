scoreboard players remove @s magic.temp 1

execute if score @s magic.temp matches 0 run function magic:spells/47/start_transform_up

execute if score @s magic.temp matches -5 run function magic:spells/47/transform_down

execute if score @s magic.temp matches ..-9 run function magic:spells/47/get_block