scoreboard players operation #magicSearch magic.id = @s magic.id

data modify storage magic:ui spells set from entity @n[type=chest_minecart,tag=magicUI,distance=..3,predicate=magic:match_id] Items
data remove storage magic:ui spells[{components:{"minecraft:custom_data":{ui_item:{}}}}]
item modify entity @s weapon.mainhand magic:set_spells

data remove entity @n[type=chest_minecart,tag=magicUI,distance=..3,predicate=magic:match_id] Items
kill @e[tag=magicUI,predicate=magic:match_id,distance=..3]

tag @s remove hasWandUI