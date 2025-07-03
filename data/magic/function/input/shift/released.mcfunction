execute if items entity @s weapon.*  minecraft:poisonous_potato[minecraft:custom_data~{hunter_medal:1}] unless score @s magic.shift matches 4.. unless score @s magic.dodgeCD matches 1.. run function magic:dodge/start

scoreboard players reset @s magic.shift
advancement revoke @s only magic:input/shift