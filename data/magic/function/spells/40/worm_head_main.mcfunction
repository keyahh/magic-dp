scoreboard players operation #magicSearch magic.spellID = @s magic.spellID

execute at @e[distance=..20,type=marker,tag=wormLead,predicate=magic:match_spell,limit=1] facing entity @s feet run tp @s ^ ^ ^1.85 facing ^ ^ ^-1

function magic:spells/40/move/ik
schedule function magic:spells/40/loop 1t append