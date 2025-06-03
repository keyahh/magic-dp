execute as @a[tag=hasBats] at @s run function magic:spells/12/main
execute if entity @a[tag=hasBats] run schedule function magic:spells/12/loop 1t append