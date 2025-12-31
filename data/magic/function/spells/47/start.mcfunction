scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players add #spellID magic.spellID 1

execute positioned ~ ~-1 ~ summon marker run function magic:spells/47/setup_anchor

schedule function magic:spells/47/loop 1t append