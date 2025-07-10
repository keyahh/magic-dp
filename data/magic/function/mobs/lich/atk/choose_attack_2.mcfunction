tag @s add inAtk
scoreboard players set @s magic.atkCD 60
execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..6] run function magic:mobs/lich/atk/choose_melee_2
execute unless entity @p[gamemode=!creative,gamemode=!spectator,distance=..6] run function magic:mobs/lich/atk/choose_range_2