rotate @s ~ ~
scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players set @s slowcast.dist 6
scoreboard players set @s slowcast.maxDist 36

tag @s add magic
tag @s add bloodPulse
tag @s add projSpell

playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 2 2