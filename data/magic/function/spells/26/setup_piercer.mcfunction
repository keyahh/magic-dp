#scoreboard players add #spellID magic.spellID 1

#scoreboard players operation @s magic.spellID = #spellID
scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players set @s slowcast.dist 10
scoreboard players set @s slowcast.maxDist 40

#execute summon marker run function magic:spells/26/setup_particles

tag @s add magic
tag @s add newMagic
tag @s add windPiercer
tag @s add projSpell