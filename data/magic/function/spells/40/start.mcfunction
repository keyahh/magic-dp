scoreboard players operation #magicSearch magic.id = @s magic.id
#execute if entity @e[distance=..200,type=marker,tag=wormLead,predicate=magic:match_id] run return run function magic:spells/40/remove
function magic:spells/40/summon/summon
#schedule function magic:spells/40/loop 1t append