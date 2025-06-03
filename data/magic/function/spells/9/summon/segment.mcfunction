scoreboard players remove #chainLength magic.temp 1
execute summon item_display run function magic:spells/9/summon/setup_segment
execute if score #chainLength magic.temp matches 1.. run function magic:spells/9/summon/segment