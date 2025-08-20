execute facing entity @p feet run rotate @s ~ 0

tag @s add thisVehicle
execute on passengers if entity @s[tag=aj.dummy.root] rotated as @n[type=husk,tag=thisVehicle] run rotate @s ~ 0
execute on passengers if entity @s[type=item_display] store success entity @s OnGround byte 1 store success score @s test unless score @s test matches 1
tag @s remove thisVehicle

execute unless score @s magic.temp = @s magic.atkCD run scoreboard players add @s magic.temp 1

execute if score @s magic.temp = @s magic.atkCD unless entity @s[tag=inAtk] run function magic:mobs/dummy/atk/single_atk