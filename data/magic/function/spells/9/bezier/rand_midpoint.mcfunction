tp @s ~ ~ ~
data modify storage bezier:points curPoint set from entity @s Pos

execute store result score #bezier.c.x bezier.temp run data get storage bezier:points curPoint[0]
execute store result score #bezier.c.y bezier.temp run data get storage bezier:points curPoint[1]
execute store result score #bezier.c.z bezier.temp run data get storage bezier:points curPoint[2]

#####################################################
# x

scoreboard players set #bezier-1 bezier.temp -1

execute store result score #bezierRand bezier.temp run random value 5..9
execute store result score #bezierToggle bezier.temp run random value 0..1
execute if score #bezierToggle bezier.temp matches 1 store result score #bezierRand bezier.temp run scoreboard players operation #bezierRand bezier.temp *= #bezier-1 bezier.temp

scoreboard players operation #bezier.c.x bezier.temp += #bezierRand bezier.temp

#####################################################
# y

scoreboard players set #bezier-1 bezier.temp -1

execute store result score #bezierRand bezier.temp run random value 0..5
#execute store result score #bezierToggle bezier.temp run random value 0..1
#execute if score #bezierToggle bezier.temp matches 1 store result score #bezierRand bezier.temp run scoreboard players operation #bezierRand bezier.temp *= #bezier-1 bezier.temp

scoreboard players operation #bezier.c.y bezier.temp += #bezierRand bezier.temp

#####################################################
# z

scoreboard players set #bezier-1 bezier.temp -1

execute store result score #bezierRand bezier.temp run random value 5..9
execute store result score #bezierToggle bezier.temp run random value 0..1
execute if score #bezierToggle bezier.temp matches 1 store result score #bezierRand bezier.temp run scoreboard players operation #bezierRand bezier.temp *= #bezier-1 bezier.temp

scoreboard players operation #bezier.c.z bezier.temp += #bezierRand bezier.temp

#####################################################

execute store result storage bezier:points p[1][0] double 1 run scoreboard players get #bezier.c.x bezier.temp
execute store result storage bezier:points p[1][1] double 1 run scoreboard players get #bezier.c.y bezier.temp
execute store result storage bezier:points p[1][2] double 1 run scoreboard players get #bezier.c.z bezier.temp