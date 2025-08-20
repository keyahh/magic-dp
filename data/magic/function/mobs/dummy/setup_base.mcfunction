scoreboard players set @s magic.spellID 14
scoreboard players set @s magic.atkCD 40
function magic:set_id
tag @s remove newDummyBase
tag @s add singleAtkMode
tag @s add randomSpell