data modify storage magic:ui current set from entity @s Items
execute on passengers run data modify storage magic:ui previous set from entity @s data.previous
execute on passengers store result score #bool magic.temp run data modify entity @s data.previous set from storage magic:ui current

execute if score #bool magic.temp matches 1 run function magic:wand/on_change