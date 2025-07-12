scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.spellID = #spellID magic.spellID
scoreboard players set @s slowcast.dist 3
scoreboard players set @s slowcast.maxDist 200

tag @s add magic
tag @s add arrowRain
tag @s add conjuration

data modify entity @s Rotation[0] set from entity @n[type=#magic:magic_user,tag=thisPlayer,distance=..7] Rotation[0]

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 0.85