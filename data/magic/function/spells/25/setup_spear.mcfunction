data merge entity @s {item_display:"head",teleport_duration:1,Tags:["magic","holySpear","projSpell"],brightness:{sky:15,block:15},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"magic:holy_spear"}}}

data modify entity @s Rotation set from entity @n[type=#magic:magic_user,predicate=magic:match_id] Rotation

scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players set @s slowcast.maxDist 30
scoreboard players set @s slowcast.dist 10

execute store result score @s magic.temp run random value 15..30