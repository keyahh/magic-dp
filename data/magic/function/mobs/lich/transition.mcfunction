tag @s remove phase1
tag @s remove inAtk

data merge entity @s {NoAI:1b}

scoreboard players operation #magicSearch magic.id = @s magic.id
tag @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id,distance=..5] add phase2
execute as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id,distance=..5] at @s run function animated_java:lich/animations/fake_die/play