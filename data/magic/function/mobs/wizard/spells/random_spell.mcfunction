scoreboard players operation #magicSearch magic.id = @s magic.id
execute as @n[type=wandering_trader,tag=wizBase,predicate=magic:match_id,distance=..1] at @s run tp @s ~ ~ ~ facing entity @p feet
execute store result score #rng magic.temp run random value 1..8

execute if score #rng magic.temp matches 1 as @n[type=wandering_trader,tag=wizBase,predicate=magic:match_id] at @s run return run function magic:spells/2/start
execute if score #rng magic.temp matches 2 as @n[type=wandering_trader,tag=wizBase,predicate=magic:match_id] at @s run return run function magic:spells/4/start
execute if score #rng magic.temp matches 3 as @n[type=wandering_trader,tag=wizBase,predicate=magic:match_id] at @s run return run function magic:spells/6/start
execute if score #rng magic.temp matches 4 as @n[type=wandering_trader,tag=wizBase,predicate=magic:match_id] at @s run return run function magic:spells/14/start
execute if score #rng magic.temp matches 5 as @n[type=wandering_trader,tag=wizBase,predicate=magic:match_id] at @s run return run function magic:spells/15/start
execute if score #rng magic.temp matches 6 as @n[type=wandering_trader,tag=wizBase,predicate=magic:match_id] at @s run return run function magic:spells/9/start
execute if score #rng magic.temp matches 7 as @n[type=wandering_trader,tag=wizBase,predicate=magic:match_id] at @s run return run function magic:spells/22/start
execute if score #rng magic.temp matches 8 as @n[type=wandering_trader,tag=wizBase,predicate=magic:match_id] at @s run return run function magic:spells/21/start