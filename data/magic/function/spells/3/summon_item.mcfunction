summon item ^ ^0.5 ^0.5 {PickupDelay:40,Motion:[0.0,0.6,0.0],Tags:["disarmedItem"],Item:{id:"minecraft:dirt",count:1}}
execute if entity @s[type=player] run data modify entity @n[type=item,tag=disarmedItem,distance=..5] Item set from entity @s SelectedItem
execute unless entity @s[type=player] run data modify entity @n[type=item,tag=disarmedItem,distance=..5] Item set from entity @s equipment.mainhand
tag @n[type=item,tag=disarmedItem,distance=..5] remove disarmedItem

item replace entity @s weapon.mainhand with air