data modify storage magic:data spellID set value -1

data modify storage magic:data history set from entity @s SelectedItem.components."minecraft:custom_data".history
data modify storage magic:data spells set from entity @s SelectedItem.components."minecraft:custom_data".spells
#tellraw @s {"nbt":"history","storage":"magic:data"}

execute store result score #historySize magic.temp run data get storage magic:data history
execute store result score #spellsSize magic.temp run data get storage magic:data spells

execute if score #historySize magic.temp matches 1.. if score #spellsSize magic.temp matches 1.. run function magic:casting/find_spell

#tellraw @s {"nbt":"history","storage":"magic:data"}

execute if score #historySize magic.temp matches 4.. run function magic:casting/trim_history

function magic:casting/start_spell with storage magic:data

#tellraw @s ["",{"text":"spellid: ","color":"white"},{"nbt":"spellID","storage":"magic:data","color":"yellow"}]