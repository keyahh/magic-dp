#ran by mage hunter model

scoreboard players operation #magicSearch magic.id = @s magic.id

execute as @n[type=skeleton,tag=hunterBase,predicate=magic:match_id] store result score @s magic.aCD run data get entity @s Rotation[0] 10