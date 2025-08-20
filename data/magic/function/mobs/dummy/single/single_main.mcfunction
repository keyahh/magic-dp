execute unless score @s magic.temp = @s magic.atkCD run scoreboard players add @s magic.temp 1

execute if score @s magic.temp = @s magic.atkCD unless entity @s[tag=inAtk] run function magic:mobs/dummy/atk/single_atk