data remove block 0 -64 0 Items

data modify storage magic:ui in set from entity @s SelectedItem
data modify block 0 -64 0 Items append from storage magic:ui in

item replace entity @s weapon.mainhand with poisonous_potato 1

loot give @s mine 0 -64 0 stick[minecraft:custom_data={drop_contents:1b}]
item replace entity @s weapon.mainhand with air