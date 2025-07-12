playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1 2
execute as @n[type=marker,tag=thisSpell] run function magic:spells/11/fizzle

execute if entity @s[tag=sword] run return run function magic:spells/4/banished
execute if entity @s[tag=manaChain] run return run function magic:spells/9/banished
execute if entity @s[tag=batSwarm] run return run kill @s
execute if entity @s[tag=soulOrbAnchor] run return run function magic:spells/29/start_explode
execute if entity @s[tag=arrowRain] run return run function magic:spells/35/fizzle