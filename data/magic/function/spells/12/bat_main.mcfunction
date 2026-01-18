scoreboard players add @s magic.batTime 1
execute if score @s magic.batTime matches 3.. run function magic:spells/12/calculate_bat

execute if score @s magic.temp matches 0 run scoreboard players remove @s theta 60
execute if score @s magic.temp matches 1 run scoreboard players add @s theta 60

execute if score @s theta matches 3600.. run scoreboard players set @s theta 0
execute if score @s theta matches ..-3600 run scoreboard players set @s theta 0

execute if score @s magic.dodgeCD matches 1 run scoreboard players add @s phi 60
execute if score @s magic.dodgeCD matches 0 run scoreboard players remove @s phi 60

execute if score @s phi >= @s maxPhi run scoreboard players set @s magic.dodgeCD 0
