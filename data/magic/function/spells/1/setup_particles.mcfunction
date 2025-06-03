tag @s add thisPlayer
scoreboard players set #boltSegRange magic.temp 1
scoreboard players set #boltJoint magic.temp 15
function magic:spells/1/raycast_1
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 3 1.4
tag @s remove thisPlayer