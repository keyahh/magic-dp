tag @s add inDodge

execute store result score #rng magic.temp run random value 1..2
scoreboard players add @s magic.atkCD 15

execute if score #rng magic.temp matches 1 run function magic:mobs/lich/dodge/left
execute if score #rng magic.temp matches 2 run function magic:mobs/lich/dodge/right