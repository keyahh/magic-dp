scoreboard players operation #magicSearch magic.chainID = @s magic.chainID

execute anchored eyes facing entity @e[type=marker,tag=bezierMark,predicate=magic:match_chain] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1 ~ ~

kill @e[distance=..2,type=marker,tag=bezierMark,predicate=magic:match_chain]