scoreboard players operation #magicSearch magic.id = @s magic.id

execute facing ^ ^ ^1 run function magic:spells/30/summon_skull
execute facing ^0.25 ^ ^1 run function magic:spells/30/summon_skull
execute facing ^0.5 ^ ^1 run function magic:spells/30/summon_skull
execute facing ^-0.25 ^ ^1 run function magic:spells/30/summon_skull
execute facing ^-0.5 ^ ^1 run function magic:spells/30/summon_skull

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.7 1
schedule function magic:spells/30/loop 1t append