scoreboard players reset @s magic.sCD
execute store result score #rng magic.temp run random value 0..2

execute if score #rng magic.temp matches 0 run function magic:mobs/hunter/dodge/back