rotate @s ~ ~

scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players set @s slowcast.dist 4
scoreboard players set @s slowcast.maxDist 100

tag @s add magic
tag @s add projSpell
tag @s add witherSpell

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 1