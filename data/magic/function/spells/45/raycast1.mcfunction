scoreboard players remove #magicRange magic.temp 1

execute if score #magicRange magic.temp matches ..0 run return run function magic:spells/45/set_end
execute unless block ^ ^ ^0.5 #magic:passable run return run function magic:spells/45/set_end

execute if score #magicRange magic.temp matches 1.. positioned ^ ^ ^0.25 run function magic:spells/45/raycast1