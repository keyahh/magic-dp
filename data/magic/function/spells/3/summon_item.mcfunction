execute if entity @s[type=player] run data modify storage magic:data Item set from entity @s SelectedItem
execute unless entity @s[type=player] run data modify storage magic:data Item set from entity @s equipment.mainhand

summon item ~ ~ ~ {Tags:["disarmItem"],PickupDelay:40,Item:{id:"minecraft:dirt",count:1}}
execute as @e[distance=..1,type=item,tag=disarmItem] at @s run function magic:spells/3/setup_item

item replace entity @s weapon.mainhand with air