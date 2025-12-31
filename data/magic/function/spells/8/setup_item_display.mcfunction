scoreboard players operation @s magic.spellID = #spellID magic.spellID
scoreboard players operation @s magic.id = #magicSearch magic.id

execute on passengers run scoreboard players operation @s magic.spellID = #spellID magic.spellID
execute on passengers run scoreboard players operation @s magic.id = #magicSearch magic.id

execute on passengers run effect give @s resistance infinite 2 true

tag @s remove newShield
execute on passengers run tag @s remove newShield