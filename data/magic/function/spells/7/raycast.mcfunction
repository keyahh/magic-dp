scoreboard players remove #magicRange magic.temp 1

execute if score #magicRange magic.temp matches ..0 run function magic:spells/7/tp
execute unless block ^ ^ ^1 #magic:passable run function magic:spells/7/tp

execute if score #magicRange magic.temp matches 1.. positioned ^ ^ ^1 run function magic:spells/7/raycast