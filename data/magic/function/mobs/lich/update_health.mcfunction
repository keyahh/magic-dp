execute store result score @s magic.health run data get entity @s Health
execute if score @s[tag=phase1] magic.health matches ..300 run function magic:mobs/lich/transition