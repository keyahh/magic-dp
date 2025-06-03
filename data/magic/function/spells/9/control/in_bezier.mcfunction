scoreboard players operation #magicSearch magic.chainID = @s magic.chainID
scoreboard players operation #magicSearch magic.magicID = @s magic.magicID

execute unless entity @e[type=marker,tag=bezierMark,predicate=magic:match_chain, distance=..30] run tag @s remove inBezier

execute as @e[type=marker,tag=bezierMark,predicate=magic:match_chain,distance=..30] at @s run function magic:spells/9/bezier/travel

execute as @n[type=marker,tag=manaChainLead,predicate=magic:match_chain] run tp @s @n[type=marker,tag=bezierMark,predicate=magic:match_chain]
