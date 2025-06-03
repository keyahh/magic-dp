scoreboard players operation #magicSearch magic.id = @s magic.id
execute as @n[type=wandering_trader,tag=wizBase,predicate=magic:match_id] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @n[type=wandering_trader,tag=wizBase,predicate=magic:match_id] at @s run function magic:spells/8/start

scoreboard players set @s magic.atkCD 20