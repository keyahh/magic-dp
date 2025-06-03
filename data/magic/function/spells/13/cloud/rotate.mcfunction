execute store result entity @s transformation.right_rotation[2] float 0.01 run random value -100..100

data modify entity @s transformation.scale set value [10f,10f,10f]
data modify entity @s interpolation_duration set value 60

tag @s remove newCloud