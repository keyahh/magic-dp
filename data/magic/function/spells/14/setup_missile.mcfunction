rotate @s ~ ~
scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players set @s slowcast.dist 6
scoreboard players set @s slowcast.maxDist 40

tag @s add magic
tag @s add magicMissile
tag @s add projSpell

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 0.85