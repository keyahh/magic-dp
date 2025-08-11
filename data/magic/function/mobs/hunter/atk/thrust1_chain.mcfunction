execute store result score #rng magic.temp run random value 0..3

execute if score #rng magic.temp matches 0 run return -1

scoreboard players set @s magic.atkCD 60
execute if score #rng magic.temp matches 1 on passengers if entity @s[tag=aj.mage_hunter.root] run return run function animated_java:mage_hunter/animations/slash/tween {to_frame:18,duration:4}
execute if score #rng magic.temp matches 2..3 on passengers if entity @s[tag=aj.mage_hunter.root] run return run function animated_java:mage_hunter/animations/thrust2/tween {to_frame:4,duration:8}