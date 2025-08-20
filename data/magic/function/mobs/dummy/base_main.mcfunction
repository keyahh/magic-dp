execute facing entity @p feet run rotate @s ~ 0

tag @s add thisVehicle
execute on passengers if entity @s[tag=aj.dummy.root] rotated as @n[type=husk,tag=thisVehicle] run rotate @s ~ 0
execute on passengers if entity @s[type=item_display] store success entity @s OnGround byte 1 store success score @s test unless score @s test matches 1
tag @s remove thisVehicle

execute if entity @s[tag=singleAtkMode] run function magic:mobs/dummy/single/single_main
execute if entity @s[tag=flurryAtkMode] run function magic:mobs/dummy/flurry/flurry_main