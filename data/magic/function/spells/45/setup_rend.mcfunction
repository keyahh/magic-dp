scoreboard players operation @s magic.spellID = #magicSearch magic.spellID
scoreboard players operation @s magic.id = #magicSearch magic.id
data merge entity @s {Tags:["magic","spell","rend"],brightness:{sky:15,block:15},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"magic:rend"}}}
rotate @s facing entity @n[type=marker,tag=rendEndMark,predicate=magic:match_spell]
kill @e[type=marker,tag=rendMark,predicate=magic:match_spell]