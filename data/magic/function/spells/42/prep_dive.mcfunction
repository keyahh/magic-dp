scoreboard players operation #magicSearch magic.uuid = @s magic.targetUUID

scoreboard players add @s magic.sCD 1
execute if score @s magic.sCD matches 21.. run function magic:spells/42/end_dive

execute anchored eyes facing entity @n[type=#magic:targets,predicate=magic:match_uuid] feet positioned ^ ^ ^3 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.2 ~ 0