function magic:spells/48/move/stop_move

tag @s add inAtk
execute store result score #rng magic.temp run random value 0..1

execute if score #rng magic.temp matches 0 on passengers if entity @s[tag=aj.ghost_knight.root] run return run function animated_java:ghost_knight/animations/swing/play
execute if score #rng magic.temp matches 1 on passengers if entity @s[tag=aj.ghost_knight.root] run return run function animated_java:ghost_knight/animations/thrust/play