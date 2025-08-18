rotate @s ~ ~
scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players set @s slowcast.dist 8
scoreboard players set @s slowcast.maxDist 40

tag @s add magic
tag @s add projSpell
tag @s add banishSpell

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 0.85