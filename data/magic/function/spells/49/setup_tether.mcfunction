rotate @s ~ ~

scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.spellID = #spellID magic.spellID
scoreboard players set @s slowcast.dist 8
scoreboard players set @s slowcast.time 200
scoreboard players set @s slowcast.maxDist 200
scoreboard players set @s slowcast.usin 100
scoreboard players operation .in math = #angle magic.temp
function magic:trig/sin
scoreboard players operation @s slowcast.usin *= .out math

tag @s add magic
tag @s add projSpell
tag @s add tetherProj
tag @s add magicSpell

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 0.8