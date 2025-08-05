#ran by mage hunter model

scoreboard players operation #magicSearch magic.id = @s magic.id
execute as @n[type=skeleton,tag=hunterBase,predicate=magic:match_id] at @s run function magic:mobs/hunter/motion/motion_right