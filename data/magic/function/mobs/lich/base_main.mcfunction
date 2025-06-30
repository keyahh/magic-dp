effect give @s invisibility infinite 0 true
scoreboard players operation #magicSearch magic.id = @s magic.id

#attack
scoreboard players remove @s[scores={magic.atkCD=1..}] magic.atkCD 1
execute if score @s[tag=!inAtk,tag=!inDodge] magic.atkCD matches ..0 if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run function magic:mobs/lich/atk/choose_attack
execute if entity @s[tag=inAtk] run function magic:mobs/wizard/atk/in_atk

#dodge
execute if entity @s[tag=!inAtk,tag=!inDodge] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..20,scores={magic.castTime=1..}] run function magic:mobs/lich/dodge/dodge

#walking
execute unless entity @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id,distance=..0.01] unless entity @s[tag=stop] run tag @s add moving

execute if entity @s[tag=moving] run function magic:mobs/lich/walk/walk_main

#execute if entity @s[tag=!inAtk] run rotate @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] ~ 0
tp @n[type=item_display,tag=aj.lich.root,predicate=magic:match_id] ~ ~ ~ ~ 0