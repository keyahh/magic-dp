scoreboard players add @s magic.temp 1
execute if score @s magic.temp matches 10.. run function magic:spells/5/remove_light

schedule function magic:spells/5/loop 1t append