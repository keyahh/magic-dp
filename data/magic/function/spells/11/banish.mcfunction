playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1 2
execute as @n[type=marker,tag=thisSpell] run function magic:spells/11/fizzle

execute if entity @s[tag=sword] run function magic:spells/4/banished
execute if entity @s[tag=manaChain] run function magic:spells/9/banished
execute if entity @s[tag=batSwarm] run kill @s