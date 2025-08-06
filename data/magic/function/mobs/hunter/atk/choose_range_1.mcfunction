execute store result score #rng magic.temp run random value 1..20

execute if score #rng magic.temp matches 1..7 on passengers if entity @s[tag=aj.mage_hunter.root] run return run function animated_java:mage_hunter/animations/lunge1/play
execute if score #rng magic.temp matches 8..14 on passengers if entity @s[tag=aj.mage_hunter.root] run return run function animated_java:mage_hunter/animations/side_slash1/play
execute if score #rng magic.temp matches 15..20 on passengers if entity @s[tag=aj.mage_hunter.root] run return run function animated_java:mage_hunter/animations/thrust1/play