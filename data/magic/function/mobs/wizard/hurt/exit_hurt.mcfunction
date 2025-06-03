execute as @n[type=item_display,tag=aj.wizard.root,predicate=magic:match_id,limit=1,sort=nearest] run function animated_java:wizard/variants/default/apply
scoreboard players reset @s magic.hurtCD
tag @s remove magic.hurt