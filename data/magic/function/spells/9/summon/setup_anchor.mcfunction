tag @s add manaChainAnchor
tag @s add manaChain
tag @s add inBezier
execute if entity @p[predicate=magic:match_id,predicate=magic:sneaking] run tag @s add grabber

scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.chainID = #chainID magic.chainID

function magic:spells/9/bezier/setup_ray