tag @s add inAtk
execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..8] run function magic:mobs/lich/atk/choose_melee_2
execute unless entity @p[gamemode=!creative,gamemode=!spectator,distance=..8] run function magic:mobs/lich/atk/choose_range_2