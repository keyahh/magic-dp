## init
scoreboard players set #sign math -400

## setup input
scoreboard players add .in math 4500
scoreboard players operation .in math %= #3600 const
execute if score .in math matches 1800.. run scoreboard players set #sign math 400
execute store result score #temp math run scoreboard players operation .in math %= #1800 const

## run
scoreboard players remove #temp math 1800
execute store result score .out math run scoreboard players operation #temp math *= .in math
scoreboard players operation .out math *= #sign math
scoreboard players add #temp math 4050000
scoreboard players operation .out math /= #temp math