#attack
scoreboard players remove @s[scores={magic.atkCD=1..}] magic.atkCD 1
execute if score @s[tag=!inAtk,tag=!inDodge] magic.atkCD matches ..0 if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run function magic:mobs/lich/atk/choose_attack_1
#execute if entity @s[tag=inAtk] run function magic:mobs/wizard/atk/in_atk

#dodge
execute if entity @s[tag=!inAtk,tag=!inDodge] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..20,scores={magic.castTime=1..}] run function magic:mobs/lich/dodge/dodge

#phase change