#update history
data modify storage magic:data history set from entity @s SelectedItem.components."minecraft:custom_data".history
$data modify storage magic:data history append value $(input)

execute store result score #historySize magic.temp run data get storage magic:data history
execute if score #historySize magic.temp matches 13.. run data remove storage magic:data history[0]

item modify entity @s weapon.mainhand magic:apply_history

#update interrupt threshhold
scoreboard players operation @s magic.dmgTaken /= #2 const

execute store result score #spellSize magic.temp if data storage magic:data history[]
execute if score #spellSize magic.temp matches 3.. run scoreboard players remove #spellSize magic.temp 3
scoreboard players operation #spellSize magic.temp *= #2 const
scoreboard players operation @s magic.breakMin -= #spellSize magic.temp