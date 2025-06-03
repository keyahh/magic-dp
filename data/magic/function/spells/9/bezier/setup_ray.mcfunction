scoreboard players operation #magicSearch magic.id = @s magic.id
scoreboard players operation #magicSearch magic.chainID = @s magic.chainID

data merge storage bezier:points {p:[[0.0d,0.0d,0.0d],[0.0d,0.0d,0.0d],[0.0d,0.0d,0.0d]],x:0,y:0,z:0,curPoint:[0,0,0]}
data modify storage bezier:points p[2] set from entity @s Pos

execute summon marker run function magic:spells/9/bezier/setup_ray_mark
execute summon marker run function magic:spells/9/bezier/setup_mark