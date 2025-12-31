scoreboard players operation #magicSearch magic.id = @s magic.id

scoreboard players add @s magic.shieldTime 1
execute as @e[type=item_display,tag=shield,predicate=magic:match_id,predicate=!magic:has_passenger] at @s run function magic:spells/8/remove_vehicle

execute if score @s magic.shieldTime matches 300.. run return run function magic:spells/8/remove_shield
execute unless entity @e[type=shulker,tag=shield,predicate=magic:match_id,distance=..20] run return run function magic:spells/8/remove_shield
execute unless entity @e[type=shulker,tag=middleShieldShulker,predicate=magic:match_id,distance=..20] run return run function magic:spells/8/remove_shield

execute anchored eyes positioned ^ ^ ^ anchored feet run function magic:spells/8/set_range

schedule function magic:spells/8/loop 1t append