execute summon item_display run function magic:spells/32/setup_skull
tellraw @a "setupanchor"
scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.spellID = #spellID magic.spellID
scoreboard players set @s slowcast.dist 1
scoreboard players set @s slowcast.maxDist 120

tag @s add magic
tag @s add newMagic
tag @s add wanderingSkull
tag @s add projSpell