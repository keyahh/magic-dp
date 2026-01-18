scoreboard players reset @s magic.dmgTaken

data modify storage magic:data history set from entity @s SelectedItem.components."minecraft:custom_data".history
$data modify storage magic:data history append value $(input)

execute store result score #historySize magic.temp run data get storage magic:data history
execute if score #historySize magic.temp matches 13.. run data remove storage magic:data history[0]

item modify entity @s weapon.mainhand magic:apply_history
