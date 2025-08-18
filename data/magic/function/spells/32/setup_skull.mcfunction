rotate @s ~ ~
data merge entity @s {item_display:"head",item:{id:"minecraft:wither_skeleton_skull",count:1},teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}

scoreboard players operation @s magic.id = #magicSearch magic.id
#scoreboard players operation @s magic.spellID = #spellID magic.spellID
scoreboard players set @s slowcast.dist 3
scoreboard players set @s slowcast.maxDist 120

tag @s add magic
tag @s add wanderingSkull
tag @s add projSpell