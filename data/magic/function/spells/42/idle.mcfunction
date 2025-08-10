tag @s remove inDive
tag @s remove inRise
execute on passengers if entity @s[tag=aj.raptor.root,tag=!aj.raptor.animation.flying_idle.playing] run function animated_java:raptor/animations/flying_idle/tween {to_frame:0,duration:4}