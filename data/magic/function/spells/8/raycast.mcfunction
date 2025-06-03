scoreboard players remove #magicRange magic.temp 1

execute if score #magicRange magic.temp matches ..0 run function magic:spells/8/tp_shield
execute unless block ^ ^ ^0.25 #magic:passable run function magic:spells/8/tp_shield

execute if score #magicRange magic.temp matches 1.. positioned ^ ^ ^0.25 run function magic:spells/8/raycast