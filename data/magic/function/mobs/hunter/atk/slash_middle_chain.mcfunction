execute store result score #rng magic.temp run random value 0..2

execute if score #rng magic.temp matches 0..1 run return -1
scoreboard players set @s magic.atkCD 30

execute if score #rng magic.temp matches 2 run function magic:mobs/hunter/dodge/dodge
