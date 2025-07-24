scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players set @s slowcast.dist 6
scoreboard players set @s slowcast.maxDist 40
execute store result score @s magic.atkCD run random value 5..10

tag @s add magic
tag @s add newMagic
tag @s add twinklingStar
tag @s add projSpell