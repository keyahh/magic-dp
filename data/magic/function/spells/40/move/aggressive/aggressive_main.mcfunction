execute as @n[type=#magic:magic_user,predicate=magic:match_id] at @s run tag @n[type=#magic:priority1,predicate=!magic:match_id] add wormTarget

execute if score #passable magic.temp matches 1 run function magic:spells/40/move/aggressive/above_ground
execute unless entity @s[tag=inLunge] if score #passable magic.temp matches 0 run function magic:spells/40/move/aggressive/below_ground
execute if entity @s[tag=inLunge] if score #passable magic.temp matches 0 run function magic:spells/40/move/aggressive/lunge
execute if score @s magic.temp matches 180 run function magic:spells/40/move/aggressive/start_lunge

tag @n[type=#magic:priority1,predicate=!magic:match_id] remove wormTarget