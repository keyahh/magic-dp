rotate @s ~ ~
scoreboard players operation @s magic.id = #magicSearch magic.id

data merge entity @s {start_interpolation:0,interpolation_duration:1,item_display:"head",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,6f]},item:{id:"minecraft:blue_dye",count:1,components:{"minecraft:item_model":"magic:pierce"}}}
execute store success entity @s OnGround byte 1 store success score @s magic.castTime unless score @s magic.castTime matches 1

scoreboard players set @s slowcast.dist 6
scoreboard players set @s slowcast.maxDist 11

tag @s add magic
tag @s add pierceSpell