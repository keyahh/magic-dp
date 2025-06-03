scoreboard players add @s magic.temp 1
tp @s ^ ^ ^-0.3

execute if score @s magic.temp matches 45 run function magic:spells/13/cloud/reduce
execute if score @s magic.temp matches 70 run function magic:spells/13/cloud/reduce
execute if score @s magic.temp matches 110 run function magic:spells/13/cloud/reduce

execute if score @s magic.temp matches 150 run kill @s