scoreboard players reset #magicRange magic.temp
scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players add #spellID magic.spellID 1
execute summon marker run function magic:spells/45/setup_start_mark