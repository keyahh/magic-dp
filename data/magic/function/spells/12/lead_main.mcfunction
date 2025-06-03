scoreboard players operation #magicSearch magic.batID = @s magic.batID

tp @s ^ ^ ^0.5 facing entity @n[type=marker,tag=batSwarmAnchor,predicate=magic:match_bat] feet

scoreboard players add @s magic.batTime 1
scoreboard players add @s magic.temp 1

execute if score @s magic.temp matches 15.. run function magic:spells/12/bat_converge
execute if score @s magic.batTime matches 200.. run function magic:spells/12/remove
execute unless entity @e[type=bat,tag=batSwarm,predicate=magic:match_bat,distance=..15] run function magic:spells/12/remove