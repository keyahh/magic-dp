scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.spellID = #spellID magic.spellID

tag @s add bigConjuration
tag @s add magic
tag @s add ruinStar
tag @s add ruinStarAnchor

scoreboard players set @s magic.wCD 0

scoreboard players set #magicRange magic.temp 4
#execute anchored eyes positioned ^ ^1.6 ^ anchored feet run function magic:spells/38/raycast