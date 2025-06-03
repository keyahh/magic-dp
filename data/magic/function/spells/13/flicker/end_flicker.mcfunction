scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
scoreboard players operation #magicSearch magic.id = @s magic.id

kill @e[type=block_display,tag=flicker,predicate=magic:match_spell]

execute positioned ~ ~-1 ~ run function magic:spells/13/blast

schedule function magic:spells/13/loop 1t append