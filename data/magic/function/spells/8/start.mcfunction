execute if entity @s[tag=hasMagicShield] run return run function magic:spells/8/remove_shield

scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players add #spellID magic.spellID 1

function magic:spells/8/summon_shield
execute anchored eyes positioned ^ ^ ^3 anchored feet run function animated_java:shield/summon {args:{}}

tag @s add hasMagicShield

schedule function magic:spells/8/loop 1t append