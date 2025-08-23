scoreboard players set @s magic.spellID 14
execute store result score @s magic.atkCD run random value 15..40
function magic:set_id
tag @s remove newDummyBase
#tag @s add singleAtkMode
tag @s add randomSpell