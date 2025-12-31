rotate @s ~ ~

scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players set @s slowcast.dist 3
scoreboard players set @s slowcast.maxDist 20

tag @s add magic
tag @s add levitate
tag @s add projSpell

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 0.5