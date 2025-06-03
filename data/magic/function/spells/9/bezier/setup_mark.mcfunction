tag @s add bezierMark
tag @s add manaChain
tag @s add magic
scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.chainID = #magicSearch magic.chainID

data modify entity @s data.p set from storage bezier:points p
