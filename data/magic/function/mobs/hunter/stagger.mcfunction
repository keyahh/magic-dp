scoreboard players reset @s magic.stagger
execute if score @s magic.posture matches ..200 run scoreboard players add @s magic.posture 50

scoreboard players set @s magic.atkCD 40
tag @s add inAtk
tag @s add inStagger
effect give @s slowness 2 255 true
execute on passengers if entity @s[tag=aj.mage_hunter.root] run function animated_java:mage_hunter/animations/stagger/tween {to_frame:0,duration:1}