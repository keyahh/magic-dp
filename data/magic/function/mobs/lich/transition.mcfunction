tag @s remove phase1
tag @s remove inAtk
tag @s remove inDodge

data merge entity @s {NoAI:1b}
effect give @s slowness 8 255 true
effect give @s resistance 12 4 true
function magic:mobs/lich/walk/stop_moving

scoreboard players operation #magicSearch magic.id = @s magic.id
#tag @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id,distance=..5] add phase2
#execute as @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id,distance=..5] at @s run function animated_java:lich/animations/fake_die/tween {to_frame:0,duration:1}

execute on passengers if entity @s[tag=aj.lich.root] run tag @s add phase2
execute on passengers if entity @s[tag=aj.lich.root] run function animated_java:lich/animations/fake_die/tween {to_frame:0,duration:1}