rotate @s ~ ~

scoreboard players operation @s magic.id = #magicSearch magic.id
#function animated_java:cutter/animations/travel/play

data merge entity @s {teleport_duration:1,item_display:"head",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-0.1f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:blue_dye",count:1,components:{"minecraft:item_model":"magic:cutter"}}}

scoreboard players set @s slowcast.dist 5
scoreboard players set @s slowcast.maxDist 30

tag @s add magic
tag @s add projSpell
tag @s add cutter