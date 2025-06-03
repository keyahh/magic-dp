scoreboard players set #splitSegRange magic.temp 10
scoreboard players set #splitJoint magic.temp 10
execute if predicate magic:40 rotated ~18 ~20 run function magic:spells/1/raycast_2
execute if predicate magic:40 rotated ~-15 ~-12 run function magic:spells/1/raycast_2
execute if predicate magic:40 rotated ~ ~-20 run function magic:spells/1/raycast_2
execute if predicate magic:40 rotated ~-16 ~19 run function magic:spells/1/raycast_2
execute if predicate magic:40 rotated ~11 ~-15 run function magic:spells/1/raycast_2