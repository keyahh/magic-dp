#bezier:points p[0][0] = start point x
#bezier:points p[0][1] = start point y
#bezier:points p[0][2] = start point z

#bezier:points p[1][0] = influence point x
#bezier:points p[1][1] = influence point y
#bezier:points p[1][2] = influence point z

#bezier:points p[2][0] = end point x
#bezier:points p[2][1] = end point y
#bezier:points p[2][2] = end point z

#bezier:points current[0],1,2

# #bezierTime bezier.temp 0..100

#calculates p(t)
#p(t) = p0*t^2 + p1*2*t*(1-t) + p2*(1-t)^2
########################################################

scoreboard players operation #bezierTime bezier.temp = @s bezier.temp

scoreboard players set #bezier2 bezier.temp 2
scoreboard players set #bezier100 bezier.temp 100

data modify storage bezier:points p set from entity @s data.p

execute store result score #bezier.p0.x bezier.temp run data get storage bezier:points p[0][0]
execute store result score #bezier.p0.y bezier.temp run data get storage bezier:points p[0][1]
execute store result score #bezier.p0.z bezier.temp run data get storage bezier:points p[0][2]

execute store result score #bezier.p1.x bezier.temp run data get storage bezier:points p[1][0]
execute store result score #bezier.p1.y bezier.temp run data get storage bezier:points p[1][1]
execute store result score #bezier.p1.z bezier.temp run data get storage bezier:points p[1][2]

execute store result score #bezier.p2.x bezier.temp run data get storage bezier:points p[2][0]
execute store result score #bezier.p2.y bezier.temp run data get storage bezier:points p[2][1]
execute store result score #bezier.p2.z bezier.temp run data get storage bezier:points p[2][2]

#########################################################
# p0*t^2

scoreboard players operation #bezierTempTime bezier.temp = #bezierTime bezier.temp

execute store result score #bezierTempTime bezier.temp run scoreboard players operation #bezierTempTime bezier.temp *= #bezierTempTime bezier.temp

scoreboard players operation #bezier.p0.x bezier.temp *= #bezierTempTime bezier.temp
scoreboard players operation #bezier.p0.y bezier.temp *= #bezierTempTime bezier.temp
scoreboard players operation #bezier.p0.z bezier.temp *= #bezierTempTime bezier.temp

scoreboard players operation #bezier.p0.x bezier.temp *= #bezier100 bezier.temp
scoreboard players operation #bezier.p0.y bezier.temp *= #bezier100 bezier.temp
scoreboard players operation #bezier.p0.z bezier.temp *= #bezier100 bezier.temp

#########################################################
# p1*2*t*(100-t)

execute store result score #bezier1-t bezier.temp run scoreboard players operation #bezier100 bezier.temp -= #bezierTime bezier.temp
scoreboard players set #bezier100 bezier.temp 100

scoreboard players operation #bezier.p1.x bezier.temp *= #bezier2 bezier.temp
scoreboard players operation #bezier.p1.x bezier.temp *= #bezierTime bezier.temp
scoreboard players operation #bezier.p1.x bezier.temp *= #bezier100 bezier.temp
scoreboard players operation #bezier.p1.x bezier.temp *= #bezier1-t bezier.temp

scoreboard players operation #bezier.p1.y bezier.temp *= #bezier2 bezier.temp
scoreboard players operation #bezier.p1.y bezier.temp *= #bezierTime bezier.temp
scoreboard players operation #bezier.p1.y bezier.temp *= #bezier100 bezier.temp
scoreboard players operation #bezier.p1.y bezier.temp *= #bezier1-t bezier.temp

scoreboard players operation #bezier.p1.z bezier.temp *= #bezier2 bezier.temp
scoreboard players operation #bezier.p1.z bezier.temp *= #bezierTime bezier.temp
scoreboard players operation #bezier.p1.z bezier.temp *= #bezier100 bezier.temp
scoreboard players operation #bezier.p1.z bezier.temp *= #bezier1-t bezier.temp

#########################################################
# p2*(100-t)^2

scoreboard players operation #bezier1-t bezier.temp *= #bezier1-t bezier.temp

scoreboard players operation #bezier.p2.x bezier.temp *= #bezier100 bezier.temp
scoreboard players operation #bezier.p2.y bezier.temp *= #bezier100 bezier.temp
scoreboard players operation #bezier.p2.z bezier.temp *= #bezier100 bezier.temp

scoreboard players operation #bezier.p2.x bezier.temp *= #bezier1-t bezier.temp
scoreboard players operation #bezier.p2.y bezier.temp *= #bezier1-t bezier.temp
scoreboard players operation #bezier.p2.z bezier.temp *= #bezier1-t bezier.temp

#########################################################
# new coordinate

scoreboard players operation #bezier.p0.x bezier.temp += #bezier.p1.x bezier.temp
scoreboard players operation #bezier.p0.x bezier.temp += #bezier.p2.x bezier.temp

scoreboard players operation #bezier.p0.y bezier.temp += #bezier.p1.y bezier.temp
scoreboard players operation #bezier.p0.y bezier.temp += #bezier.p2.y bezier.temp

scoreboard players operation #bezier.p0.z bezier.temp += #bezier.p1.z bezier.temp
scoreboard players operation #bezier.p0.z bezier.temp += #bezier.p2.z bezier.temp

execute store result storage bezier:points x float 0.000001 run scoreboard players get #bezier.p0.x bezier.temp
execute store result storage bezier:points y float 0.000001 run scoreboard players get #bezier.p0.y bezier.temp
execute store result storage bezier:points z float 0.000001 run scoreboard players get #bezier.p0.z bezier.temp

execute store result score #bezier.p2.x bezier.temp run data get storage bezier:points p[2][0]
execute store result score #bezier.p2.y bezier.temp run data get storage bezier:points p[2][1]
execute store result score #bezier.p2.z bezier.temp run data get storage bezier:points p[2][2]

execute if score #bezier.p0.x bezier.temp = #bezier.p2.x bezier.temp if score #bezier.p0.y bezier.temp = #bezier.p2.y bezier.temp if score #bezier.p0.z bezier.temp = #bezier.p2.z bezier.temp run kill @s

########################################################