scoreboard players set #boltJoint magic.temp 30
#scoreboard players operation #magicSearch magic.spellID = @s magic.spellID
#scoreboard players operation #magicID magic.id = @s magic.id

tag @s add thisOrigin
$tp @s ~ ~ ~ $(x) $(y) 
function magic:spells/13/bolt/angle
kill @s