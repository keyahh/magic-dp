scoreboard players reset @s magic.dodgeCD
execute store result score #rng magic.temp run random value 0..9

execute if score #rng magic.temp matches 4..9 run return -1

function magic:mobs/lich/dodge/dodge
scoreboard players add @s magic.atkCD 10