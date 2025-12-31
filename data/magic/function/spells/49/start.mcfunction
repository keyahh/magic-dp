scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players add #spellID magic.spellID 1
execute store result score #angle magic.temp run data get entity @s Rotation[1] -1
execute anchored eyes positioned ^ ^-0.3 ^ anchored feet rotated as @s summon marker run function magic:spells/49/setup_tether

schedule function magic:spells/49/loop 1t append