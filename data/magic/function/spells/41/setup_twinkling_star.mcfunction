scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players set @s slowcast.dist 2
scoreboard players set @s slowcast.maxDist 60
execute store result score @s magic.atkCD run random value 10..20

tag @s add magic
tag @s add newMagic
tag @s add twinklingStar
tag @s add projSpell