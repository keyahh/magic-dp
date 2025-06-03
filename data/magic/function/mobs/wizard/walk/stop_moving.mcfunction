#tellraw @a "stop moving"
scoreboard players operation #magicSearch magic.id = @s magic.id

execute as @n[type=item_display,tag=aj.wizard.root,predicate=magic:match_id] run function animated_java:wizard/animations/walk/stop

tag @s remove moving