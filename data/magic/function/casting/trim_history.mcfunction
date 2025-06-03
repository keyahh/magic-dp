#preserves the last 3 inputs for spell chaining, deletes the rest

data remove storage magic:data history[0]
scoreboard players remove #historySize magic.temp 1
#tellraw @p ["",{"text":"history size: "},{"score":{"name":"#historySize","objective":"magic.temp"},"color":"aqua"}]
#tellraw @s {"nbt":"history","storage":"magic:data"}

execute if score #historySize magic.temp matches 4.. run return run function magic:casting/trim_history

item modify entity @s weapon.mainhand magic:apply_history