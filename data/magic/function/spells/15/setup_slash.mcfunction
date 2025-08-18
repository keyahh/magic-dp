rotate @s ~ ~
scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players set @s slowcast.dist 10
scoreboard players set @s slowcast.maxDist 25

tag @s add magic
tag @s add laceration
tag @s add projSpell

#playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 0.85