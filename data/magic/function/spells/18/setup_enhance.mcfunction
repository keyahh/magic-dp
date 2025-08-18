rotate @s ~ ~

scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players set @s slowcast.dist 4
scoreboard players set @s slowcast.maxDist 16

tag @s add magic
tag @s add bodyEnhance
tag @s add projSpell

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 1.6