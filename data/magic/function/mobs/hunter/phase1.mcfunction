#attack
scoreboard players remove @s[scores={magic.atkCD=1..}] magic.atkCD 1
execute if score @s[tag=!inAtk,tag=!inDodge] magic.atkCD matches ..0 if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run function magic:mobs/hunter/atk/choose_atk_1

#dodge
execute if entity @p[distance=..3,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s magic.sCD 1
execute if score @s[tag=!inAtk,tag=!inDodge] magic.sCD matches 30.. run function magic:mobs/hunter/dodge/backstep_chance

execute if entity @s[tag=!inAtk,tag=!inDodge] if entity @e[type=#magic:magic_user,gamemode=!creative,gamemode=!spectator,distance=..35,scores={magic.castTime=1..}] run function magic:mobs/hunter/dodge/dodge

#stagger
execute if score @s[tag=!inStagger] magic.stagger >= @s magic.posture run function magic:mobs/hunter/stagger