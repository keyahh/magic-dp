execute store result score #rng magic.temp run random value 0..2

execute if score #rng magic.temp matches 0 run return -1

scoreboard players set @s magic.atkCD 50
execute if score #rng magic.temp matches 1 on passengers if entity @s[tag=aj.mage_hunter.root] run return run function animated_java:mage_hunter/animations/cross_slash/tween {to_frame:3,duration:10}
execute if score #rng magic.temp matches 2 on passengers if entity @s[tag=aj.mage_hunter.root] run return run function animated_java:mage_hunter/animations/lunge1/tween {to_frame:8,duration:10}