scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.spellID = #spellID magic.spellID

tag @s add magic
tag @s add soulOrbAnchor
tag @s add soulOrb
tag @s add inMove
tag @s add conjuration

data modify entity @s Rotation set from entity @n[distance=..5,type=#magic:magic_user,predicate=magic:match_id] Rotation