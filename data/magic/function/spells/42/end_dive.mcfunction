scoreboard players reset #range magic.temp
scoreboard players reset @s slowcast.dist
scoreboard players reset @s slowcast.maxDist

tag @s remove inDive
tag @s remove inAtk
tag @s add inRise
execute on passengers if entity @s[tag=aj.raptor.root] run function animated_java:raptor/animations/flap/tween {to_frame:0,duration:5}