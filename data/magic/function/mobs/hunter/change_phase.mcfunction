tag @s remove phase1
tag @s remove inDodge
tag @s remove inAtk
tag @s remove inStagger

tag @s add inTransition
effect give @s slowness 2 255 true
effect give @s resistance 2 255 true

execute on passengers if entity @s[tag=aj.mage_hunter.root] run tag @s add phase2
execute on passengers if entity @s[tag=aj.mage_hunter.root] run function animated_java:mage_hunter/animations/transition_phase/tween {to_frame:0,duration:1}