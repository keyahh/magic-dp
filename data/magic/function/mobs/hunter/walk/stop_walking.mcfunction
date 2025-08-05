#tellraw @a "stop moving"
scoreboard players operation #magicSearch magic.id = @s magic.id

execute as @n[type=item_display,tag=aj.mage_hunter.root,predicate=magic:match_id] run function animated_java:mage_hunter/animations/walk/stop

tag @s remove moving