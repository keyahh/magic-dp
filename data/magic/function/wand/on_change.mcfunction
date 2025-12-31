clear @a *[minecraft:custom_data~{ui_item:{}}]

data modify storage magic:ui in set from storage magic:ui current
data remove storage magic:ui in[{components:{"minecraft:custom_data":{ui_item:{}}}}]
data remove storage magic:ui in[{components:{"minecraft:custom_data":{is_spell:1}}}]
execute if data storage magic:ui in[0] run function magic:wand/return_items

function magic:wand/refresh