tag @s add magic
tag @s add batSwarm
tag @s add batSwarmLead

scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.spellID = #spellID magic.spellID
execute if score #magicSearch magic.uuid matches -2147483648.. run scoreboard players operation @s magic.uuid = #magicSearch magic.uuid