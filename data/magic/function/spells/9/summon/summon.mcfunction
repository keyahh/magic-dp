scoreboard players set #chainLength magic.temp 36
scoreboard players add #chainID magic.chainID 1
scoreboard players operation #magicSearch magic.id = @s magic.id
execute rotated as @s summon marker run function magic:spells/9/summon/setup_anchor
execute store result storage magic:data bullet.x double 1 run random value -55..55
execute store result storage magic:data bullet.y double 1 run random value -40..20
execute summon marker run function magic:spells/9/summon/setup_lead with storage magic:data bullet
execute if score #chainLength magic.temp matches 1.. run function magic:spells/9/summon/head

schedule function magic:spells/9/control/loop 1t append