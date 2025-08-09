execute store result score #rng magic.temp run random value 0..3

execute if score #rng magic.temp matches 0..2 run return -1
scoreboard players set @s magic.atkCD 30

execute if score #rng magic.temp matches 2 run function magic:mobs/hunter/dodge/dodge
