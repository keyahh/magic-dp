tp @s ~ ~ ~
data modify storage bezier:points p[0] set from entity @s Pos
scoreboard players reset #bezierRay bezier.temp
kill @s
