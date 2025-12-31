execute if block ~ ~ ~ #magic:passable run return run kill @s

scoreboard players operation @s magic.id = #magicSearch magic.id
scoreboard players operation @s magic.id = #spellID magic.spellID

tag @s add magic
tag @s add eqAnchor

execute store result score @s x run data get entity @s Pos[0]
execute store result score @s z run data get entity @s Pos[2]