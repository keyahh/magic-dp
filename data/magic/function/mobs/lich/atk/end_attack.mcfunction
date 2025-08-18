#ran by lich model

scoreboard players operation #magicSearch magic.id = @s magic.id
#tag @n[type=wither_skeleton,tag=lichBase,predicate=magic:match_id] remove inAtk
execute on vehicle run tag @s remove inAtk