#loop through list of spells and return spellID if a match is found

data modify storage magic:data temp_hist set from storage magic:data temp_history

scoreboard players reset #matchSpell magic.temp
execute store result score #matchSpell magic.temp run data modify storage magic:data temp_hist set from storage magic:data temp_spells[0].components."minecraft:custom_data".sequence

#tellraw @s {"nbt":"temp_spells[0].components."minecraft:custom_data".spellID","storage":"magic:data"}
#tellraw @s {"nbt":"temp_spells[0].components."minecraft:custom_data".sequence","storage":"magic:data"}

execute if score #matchSpell magic.temp matches 0 run return run data modify storage magic:data spellID set from storage magic:data temp_spells[0].components."minecraft:custom_data".spellID

data remove storage magic:data temp_spells[0]
scoreboard players remove #spellsSize magic.temp 1

execute if score #spellsSize magic.temp matches 1.. run function magic:casting/search_spells