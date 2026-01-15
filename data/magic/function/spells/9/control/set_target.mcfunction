scoreboard players operation #magicSearch magic.chainID = @s magic.chainID
scoreboard players operation #magicSearch magic.magicID = @s magic.magicID

execute facing entity @e[distance=..16,type=#magic:targets,predicate=!magic:match_id,limit=1,sort=arbitrary] eyes run return run tp @s ^ ^-0.3 ^1.3
#execute unless entity @e[type=#magic:targets,predicate=!magic:match_id,distance=..16] facing entity @n[type=marker,tag=manaChainAnchor,predicate=magic:match_chain] eyes run tp @s ^0.5 ^-0.05 ^4