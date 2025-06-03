item replace entity @s weapon.mainhand with air
effect give @s invisibility infinite 0 true
scoreboard players operation #magicSearch magic.id = @s magic.id

#attack
scoreboard players remove @s[scores={magic.atkCD=1..}] magic.atkCD 1
execute if score @s magic.atkCD matches ..0 if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run function magic:mobs/wizard/atk/choose_attack
execute if entity @s[tag=inAtk] run function magic:mobs/wizard/atk/in_atk

#hurt
execute if entity @s[nbt={HurtTime:10s}] run function magic:mobs/wizard/hurt/hurt
execute if entity @s[tag=magic.hurt] run function magic:mobs/wizard/hurt/hurt_main

#walking
execute if entity @s[tag=!inAtk] unless entity @n[type=item_display,tag=aj.wizard.root,predicate=magic:match_id,distance=..0.01] run tag @s add moving

execute if entity @s[tag=moving] run function magic:mobs/wizard/walk/walk_main

execute if entity @s[tag=!inAtk] run rotate @n[type=item_display,tag=aj.wizard.root,predicate=magic:match_id] ~ 0
tp @n[type=item_display,tag=aj.wizard.root,predicate=magic:match_id] ~ ~ ~