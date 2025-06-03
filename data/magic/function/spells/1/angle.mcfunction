scoreboard players set #boltSegRange magic.temp 16
scoreboard players remove #boltJoint magic.temp 1
execute if predicate magic:20 rotated ~29 ~18 run function magic:spells/1/raycast_1
execute if predicate magic:20 rotated ~-22 ~-27 run function magic:spells/1/raycast_1
execute if predicate magic:20 rotated ~ ~-26 run function magic:spells/1/raycast_1
execute if predicate magic:20 rotated ~-24 ~30 run function magic:spells/1/raycast_1
execute if predicate magic:20 rotated ~20 ~-25 run function magic:spells/1/raycast_1
execute if predicate magic:60 run function magic:spells/1/split