data merge entity @s {item_display:"head",Tags:["magic","crown","crownBoltSeg"],brightness:{sky:15,block:15},item:{id:"minecraft:blue_dye",count:1,components:{"minecraft:item_model":"magic:red_bolt"}}}
tp @s ~ ~ ~ ~ ~

scoreboard players operation @s magic.spellID = #magicSearch magic.spellID
scoreboard players operation @s magic.id = #magicSearch magic.id

scoreboard players remove #boltJoint magic.temp 1

execute if score #boltJoint magic.temp matches 1.. positioned ^ ^ ^2 rotated as @n[tag=thisOrigin] run function magic:spells/13/bolt/angle

#tag @s add thisOrigin
#execute if predicate magic:20 run function magic:spells/13/bolt/setup_split
#tag @s remove thisOrigin