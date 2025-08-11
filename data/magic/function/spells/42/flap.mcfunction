#flapping
execute store result score #rng magic.temp run random value 0..1
execute if score #rng magic.temp matches 0 if entity @s[tag=!inDive,tag=!inRise] on passengers if entity @s[tag=aj.raptor.root,tag=!aj.raptor.animation.flap.playing] run function animated_java:raptor/animations/flap/tween {to_frame:0,duration:0}