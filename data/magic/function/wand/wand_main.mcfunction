scoreboard players operation #magicSearch magic.id = @s magic.id
tp @n[type=item_display,tag=magicUI,predicate=magic:match_id] ~ ~1 ~
execute unless items entity @s weapon.offhand poisonous_potato[minecraft:custom_data~{is_wand:1}] run return run function magic:wand/close
execute if items entity @s weapon.mainhand * run function magic:wand/clear_mainhand