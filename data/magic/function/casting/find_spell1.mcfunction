data modify storage magic:data temp_spells set from storage magic:data spells
execute store result score #spellsSize magic.temp run data get storage magic:data spells
data remove storage magic:data temp_history[0]
#tellraw @s {"nbt":"temp_history","storage":"magic:data"}

function magic:casting/search_spells