data modify storage magic:data spellID set value -1

data modify storage magic:data history set from entity @s SelectedItem.components."minecraft:custom_data".history
data modify storage magic:data spells set from entity @s SelectedItem.components."minecraft:custom_data".spells

execute store result score #historySize magic.temp run data get storage magic:data history
execute store result score #spellsSize magic.temp run data get storage magic:data spells

execute if score #historySize magic.temp matches 1.. if score #spellsSize magic.temp matches 1.. run function magic:casting/find_spell

execute if score #historySize magic.temp matches 4.. run function magic:casting/trim_history

title @s actionbar {"nbt":"history","storage":"magic:data","color":"yellow"}

#execute if score @s magic.castingTime matches ..3 unless score @s magic.spellDeflectCD matches 1.. run function magic:casting/deflect/start_deflect

function magic:casting/start_spell with storage magic:data

scoreboard players reset @s magic.castingTime