scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players add #spellID magic.spellID 1
scoreboard players set #wormLength magic.temp 19
scoreboard players operation #maxWormLength magic.temp = #wormLength magic.temp

data remove storage magic:chain nextUUID
execute summon marker run function magic:spells/40/summon/setup_lead
function magic:spells/40/summon/summon_seg
execute summon item_display run function magic:spells/40/summon/setup_head