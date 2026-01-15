scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
scoreboard players add @s magic.temp 1

#movement
execute at @s as @e[type=item_display,tag=wormHead,predicate=magic:match_spell] run function magic:spells/40/move/ik

scoreboard players set #passable magic.temp 0
execute if block ~ ~1.5 ~ #magic:passable run scoreboard players set #passable magic.temp 1

scoreboard players set #aggro magic.temp 0
execute as @n[type=#magic:magic_user,predicate=magic:match_id] at @s if entity @e[distance=..60,type=#magic:priority1,predicate=!magic:match_id] run scoreboard players set #aggro magic.temp 1

execute if score #aggro magic.temp matches 0 run function magic:spells/40/move/passive/passive_main
execute if score #aggro magic.temp matches 1 run function magic:spells/40/move/aggressive/aggressive_main

scoreboard players reset #passable magic.temp
scoreboard players reset #aggro magic.temp

#health and damage
execute as @e[type=item_display,tag=earthWorm,predicate=magic:match_spell] at @s run function magic:spells/40/segment_main
execute if score #hasCow magic.temp matches 0 run return run function magic:spells/40/remove
scoreboard players reset #hasCow magic.temp

execute if score @s magic.temp matches 220.. run scoreboard players reset @s magic.temp
#schedule function magic:spells/40/loop 1t append