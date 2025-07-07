#r = radius of sphere * 10
#a = theta
#b = phi

#x = r*sin(a)cos(b)
#y = r*cos(b)
#z = r*sin(a)sin(b)

## multiply x and z results by 0.00001 and multiply y result by 0.001 to get the real answers

## calculate trig stuff

scoreboard players operation .in math = #a math
function magic:trig/sin
scoreboard players operation #sinA math = .out math

scoreboard players operation .in math = #b math
function magic:trig/sin
scoreboard players operation #sinB math = .out math

scoreboard players operation .in math = #b math
function magic:trig/cos
scoreboard players operation #cosB math = .out math

## z

execute store result score #sinAsinB math run scoreboard players operation #sinB math *= #sinA math
scoreboard players operation #sinAsinB math *= #r math

## x

execute store result score #sinAcosB math run scoreboard players operation #sinA math *= #cosB math
scoreboard players operation #sinAcosB math *= #r math

## y
scoreboard players operation #cosB math *= #r math

## storage

execute store result storage magic:sphere x float 0.00001 run scoreboard players get #sinAcosB math
execute store result storage magic:sphere z float 0.00001 run scoreboard players get #sinAsinB math
execute store result storage magic:sphere y float 0.001 run scoreboard players get #cosB math