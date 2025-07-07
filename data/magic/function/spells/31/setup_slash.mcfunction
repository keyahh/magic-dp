scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players set @s slowcast.dist 8
scoreboard players set @s slowcast.maxDist 24

execute if score #bloodSlashSide magic.bloodSlashSide matches 1 run return run data merge entity @s {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,-0.1f,-0.4f,1f],translation:[0f,0f,0f],scale:[1f,1.4f,1f]},item_display:"head",Tags:["magic","bloodSlash","newMagic","projSpell"],brightness:{sky:15,block:15},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"magic:blood_slash"}}}
data merge entity @s {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0.1f,0.3f,1f],translation:[0f,0f,0f],scale:[1f,1.4f,1f]},item_display:"head",Tags:["magic","bloodSlash","newMagic","projSpell"],brightness:{sky:15,block:15},item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"magic:blood_slash"}}}