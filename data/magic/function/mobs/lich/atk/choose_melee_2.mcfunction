scoreboard players set @s magic.atkCD 75

execute store result score #rng magic.temp run random value 1..21

execute if score #rng magic.temp matches 1..4 on passengers if entity @s[tag=aj.lich.root] run return run function animated_java:lich/animations/swing_flurry/play
execute if score #rng magic.temp matches 5..9 run function magic:mobs/lich/dodge/dodge
execute if score #rng magic.temp matches 10..11 on passengers if entity @s[tag=aj.lich.root] run return run function animated_java:lich/animations/swing2/play
execute if score #rng magic.temp matches 12 on passengers if entity @s[tag=aj.lich.root] run return run function animated_java:lich/animations/slam/play
execute if score #rng magic.temp matches 13..14 on passengers if entity @s[tag=aj.lich.root] run return run function animated_java:lich/animations/ground_cutter/play
execute if score #rng magic.temp matches 15..18 on passengers if entity @s[tag=aj.lich.root] run return run function animated_java:lich/animations/swing3/play
execute if score #rng magic.temp matches 19..20 on passengers if entity @s[tag=aj.lich.root] run return run function animated_java:lich/animations/shotgun/play
execute if score #rng magic.temp matches 21 on passengers if entity @s[tag=aj.lich.root] run return run function animated_java:lich/animations/cast2/play


#execute if score #rng magic.temp matches 1..4 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/swing_flurry/play
#execute if score #rng magic.temp matches 5..9 run function magic:mobs/lich/dodge/dodge
#execute if score #rng magic.temp matches 10..11 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/swing2/play
#execute if score #rng magic.temp matches 12 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/slam/play
#execute if score #rng magic.temp matches 13..14 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/ground_cutter/play
#execute if score #rng magic.temp matches 15..18 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/swing3/play
#execute if score #rng magic.temp matches 19..20 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/shotgun/play
#execute if score #rng magic.temp matches 21 as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] run return run function animated_java:lich/animations/cast2/play
