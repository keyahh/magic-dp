rotate @s ~ ~
data merge entity @s {teleport_duration:1,item_display:"thirdperson_righthand",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.9f,1.9f,1.9f]},item:{id:"minecraft:magma_block",count:1}}

scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players set @s slowcast.dist 8
scoreboard players set @s slowcast.time 200
scoreboard players set @s slowcast.maxDist 200

scoreboard players set @s slowcast.usin 100
scoreboard players operation .in math = #angle magic.temp
function magic:trig/sin
scoreboard players operation @s slowcast.usin *= .out math

tag @s add magic
tag @s add fireball
tag @s add projSpell

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 0.85