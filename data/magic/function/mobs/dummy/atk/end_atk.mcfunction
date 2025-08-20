#ran by dummy model

execute on vehicle run tag @s remove inAtk
execute on vehicle run scoreboard players reset @s magic.temp
execute on vehicle store result score @s magic.atkCD run random value 15..40