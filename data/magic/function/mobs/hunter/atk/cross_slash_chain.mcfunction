execute store result score #rng magic.temp run random value 0..1

execute if score #rng magic.temp matches 0 run return -1

scoreboard players add @s magic.atkCD 40
execute if score #rng magic.temp matches 1 run return run function magic:mobs/hunter/dodge/back