#ran by lich model

#scoreboard players operation #magicSearch magic.id = @s magic.id
#effect clear @n[type=wither_skeleton,tag=lichBase,predicate=magic:match_id] levitation
#data merge entity @n[type=wither_skeleton,tag=lichBase,predicate=magic:match_id] {NoAI:1b}

execute on vehicle run effect clear @s levitation
execute on vehicle run data merge entity @s {NoAI:1b}