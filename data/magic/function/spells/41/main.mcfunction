execute if score @s magic.atkCD matches 1.. run function magic:spells/41/float
execute unless score @s magic.atkCD matches 1.. run function magic:spells/41/attack
schedule function magic:spells/41/loop 1t append