tag @s add magic
tag @s add batSwarm
tag @s add batSwarmAnchor

scoreboard players operation @s magic.id = #magicSearch magic.id

scoreboard players add #batID magic.batID 1
scoreboard players operation @s magic.batID = #batID magic.batID