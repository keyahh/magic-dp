tag @s add manaChain
tag @s add magic
scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.chainID = #magicSearch magic.chainID

execute rotated as @p[predicate=magic:match_id] run tp @s ~ ~ ~ ~ ~
execute positioned ^ ^ ^6 run function magic:spells/9/bezier/rand_midpoint

scoreboard players set #bezierRay bezier.temp 28
scoreboard players operation #bezierHalfLength bezier.temp = #bezierRay bezier.temp
scoreboard players operation #bezierHalfLength bezier.temp /= #bezier2 bezier.temp

execute at @n[type=marker,tag=manaChainAnchor,predicate=magic:match_chain,distance=..10] run tp @s ~ ~ ~

function magic:spells/9/bezier/raycast