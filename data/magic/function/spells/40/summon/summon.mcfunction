scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players add #spellID magic.spellID 1
scoreboard players set #wormLength magic.temp 20

execute summon marker run function magic:spells/40/summon/setup_lead
execute summon item_display run function magic:spells/40/summon/setup_head
function magic:spells/40/summon/summon_seg