execute if score @s magic.cloud matches 2 run data modify entity @s block_state.Name set value "minecraft:orange_concrete"
execute if score @s magic.cloud matches 3 run data modify entity @s block_state.Name set value "minecraft:orange_stained_glass"
execute if score @s magic.cloud matches 4 run data modify entity @s block_state.Name set value "minecraft:black_stained_glass"
execute if score @s magic.cloud matches 5 run data modify entity @s block_state.Name set value "minecraft:gray_stained_glass"

scoreboard players add @s magic.cloud 1