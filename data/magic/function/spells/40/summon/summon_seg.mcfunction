scoreboard players remove #wormLength magic.temp 1
execute if score #wormLength magic.temp matches 1.. summon item_display run function magic:spells/40/summon/setup_seg
execute if score #wormLength magic.temp matches 1.. run function magic:spells/40/summon/summon_seg