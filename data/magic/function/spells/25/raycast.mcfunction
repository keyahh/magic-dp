scoreboard players remove #magicRange magic.temp 1

execute if score #magicRange magic.temp matches ..0 run return run function magic:spells/25/summon_spear
execute unless block ^ ^ ^0.5 #magic:passable run return run function magic:spells/25/summon_spear

execute if score #magicRange magic.temp matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #magic:passable run function magic:spells/25/raycast