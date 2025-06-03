data merge entity @s {teleport_duration:2,item_display:"head",Tags:["magic","manaChainHead","manaChain","conjuration"],brightness:{sky:15,block:15},item:{id:"minecraft:blue_dye",count:1,components:{"minecraft:item_model":"magic:mana_chain"}}}

scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.chainID = #chainID magic.chainID

summon snowball ~ ~ ~ {NoGravity:1b,Tags:["magic","chainPtrPrev","newChainPtrNext","manaChain"],Item:{id:"minecraft:snowball",count:1,components:{"minecraft:item_model":"minecraft:air"}}}
summon snowball ~ ~ ~ {NoGravity:1b,Tags:["magic","chainPtrNext","newChainPtrPrev","manaChain"],Item:{id:"minecraft:snowball",count:1,components:{"minecraft:item_model":"minecraft:air"}}}

ride @n[type=snowball,tag=newChainPtrPrev] mount @s
execute on passengers run ride @n[type=snowball,tag=newChainPtrNext] mount @s
execute on passengers run tag @s remove newChainPtrPrev
execute on passengers on passengers run tag @s remove newChainPtrNext
execute on passengers run scoreboard players operation @s magic.chainID = #chainID magic.chainID
execute on passengers run scoreboard players operation @s magic.id = #magicSearch magic.id
execute on passengers on passengers run scoreboard players operation @s magic.chainID = #chainID magic.chainID
execute on passengers on passengers run scoreboard players operation @s magic.id = #magicSearch magic.id

data modify storage magic:chain nextUUID set from entity @s UUID