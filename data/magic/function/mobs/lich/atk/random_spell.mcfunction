execute store result score #rng magic.temp run random value 1..5
execute if score #rng magic.temp matches 1..2 run return run function magic:spells/28/start
execute if score #rng magic.temp matches 3..4 run return run function magic:spells/34/start
execute if score #rng magic.temp matches 5 run return run function magic:spells/1/start
#execute if score #rng magic.temp matches 6 run return run function magic:spells/35/start