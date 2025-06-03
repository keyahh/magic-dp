data modify storage magic:data temp_history set from storage magic:data history
#tellraw @s {"nbt":"temp_history","storage":"magic:data"}

data modify storage magic:data temp_spells set from storage magic:data spells
function magic:casting/search_spells

execute store result score #spellID magic.temp run data get storage magic:data spellID
execute if score #spellID magic.temp matches -1 run function magic:casting/find_spell1

execute store result score #spellID magic.temp run data get storage magic:data spellID
execute if score #spellID magic.temp matches -1 run function magic:casting/find_spell1

execute store result score #spellID magic.temp run data get storage magic:data spellID
execute if score #spellID magic.temp matches -1 run function magic:casting/find_spell1