execute if score #passable magic.temp matches 0 unless entity @s[tag=belowGround] run function magic:spells/40/move/passive/rng_offset

execute if score #passable magic.temp matches 1 run function magic:spells/40/move/passive/above_ground

execute store result storage magic:temp offset float 0.01 run scoreboard players get @s magic.aCD
execute unless entity @s[tag=inLunge] if score #passable magic.temp matches 0 run function magic:spells/40/move/passive/below_ground with storage magic:temp

execute if entity @s[tag=inLunge] if score #passable magic.temp matches 0 run function magic:spells/40/move/passive/lunge
execute if score @s magic.temp matches 220 run function magic:spells/40/move/passive/start_lunge