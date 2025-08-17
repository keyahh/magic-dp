tag @s remove hasMagicShield
scoreboard players reset @s magic.shieldTime

scoreboard players operation #magicSearch magic.id = @s magic.id
execute as @e[type=item_display,tag=shield,predicate=magic:match_id] at @s run function magic:spells/8/remove_vehicle

tp @e[tag=shield,predicate=magic:match_id,distance=..20] 0 -64 0
kill @e[tag=shield,predicate=magic:match_id]

execute as @e[type=item_display,tag=shieldDisplay,predicate=magic:match_id] run function animated_java:shield/remove/this