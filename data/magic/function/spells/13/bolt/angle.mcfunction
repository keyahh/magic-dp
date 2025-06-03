execute store result score #rng magic.temp run random value 1..11
execute if score #rng magic.temp matches 1 rotated ~29 ~18 summon item_display run function magic:spells/13/bolt/setup_segment
execute if score #rng magic.temp matches 2 rotated ~-32 ~-27 summon item_display run function magic:spells/13/bolt/setup_segment
execute if score #rng magic.temp matches 3 rotated ~53 ~-26 summon item_display run function magic:spells/13/bolt/setup_segment
execute if score #rng magic.temp matches 4 rotated ~-24 ~30 summon item_display run function magic:spells/13/bolt/setup_segment
execute if score #rng magic.temp matches 5 rotated ~40 ~-25 summon item_display run function magic:spells/13/bolt/setup_segment
execute if score #rng magic.temp matches 6 rotated ~ ~ summon item_display run function magic:spells/13/bolt/setup_segment

execute if score #rng magic.temp matches 7 rotated ~38 ~20 summon item_display run function magic:spells/13/bolt/setup_segment
execute if score #rng magic.temp matches 8 rotated ~-45 ~-12 summon item_display run function magic:spells/13/bolt/setup_segment
execute if score #rng magic.temp matches 9 rotated ~ ~-20 summon item_display run function magic:spells/13/bolt/setup_segment
execute if score #rng magic.temp matches 10 rotated ~-26 ~19 summon item_display run function magic:spells/13/bolt/setup_segment
execute if score #rng magic.temp matches 11 rotated ~51 ~-15 summon item_display run function magic:spells/13/bolt/setup_segment


#execute if predicate magic:40 run function magic:spells/13/bolt/setup_split