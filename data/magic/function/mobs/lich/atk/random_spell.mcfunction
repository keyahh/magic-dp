execute store result score #rng magic.temp run random value 1..4
execute if score #rng magic.temp matches 1..2 run return run function magic:spells/28/start
execute if score #rng magic.temp matches 3 run return run function magic:spells/4/start
execute if score #rng magic.temp matches 4 run return run function magic:spells/1/start